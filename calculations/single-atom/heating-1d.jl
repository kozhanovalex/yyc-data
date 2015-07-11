#!/usr/bin/julia -f

# 1D harmonic trap with magic wavelength using Monte Carlo

immutable MagicHarmonic1D{T}
    m::T
    ω::T
    center::T

    k_emit::T
    Γ::T

    k_drive::T
    Ω::T
    δ::T
end

immutable Propagator1D{T, P, PI}
    H::MagicHarmonic1D{T}
    dt::T
    dx::T
    nstep::Int
    nele::Int

    tmp::Matrix{Complex{T}} # 2 x nele
    p_fft!::P
    p_ifft!::PI

    P_k::Vector{Complex{T}} # nele
    P_x2::Vector{Complex{T}} # nele
    P_σ11::Matrix{Complex{T}} # nele x nstep
    P_σ12::Matrix{Complex{T}} # nele x nstep
    # P_σ21::Matrix{Complex{T}} # nele x nstep = H_σ12*
    P_σ22::Matrix{Complex{T}} # nele x nstep
end

function Propagator1D{T}(H::MagicHarmonic1D{T}, dt::T, dx::T, nstep, nele)
    # Hamiltonian is
    #   H = k^2 / (2m) + m ω^2 x^2 / 2
    #       + Ω (cos(δ t + k_drive x) σ_x + sin(δ t + k_drive x) σ_y)
    #     = H_p + H_x + H_σ
    # H_k = k^2 / (2m)
    # H_x = m ω^2 x^2 / 2
    # H_σ = Ω (cos(δ t + k_drive x) σ_x + sin(δ t + k_drive x) σ_y)

    # Propagator is
    # P_k = exp(im H_k Δt) = exp(im k^2 Δt / (2m))
    # P_x = exp(im H_x Δt) = exp(im m ω^2 x^2 Δt / 2)
    # P_x2 = exp(im H_x Δt / 2) = exp(im m ω^2 x^2 Δt / 4)

    tmp = Matrix{Complex{T}}(2, nele)

    # FFT plan
    p_fft! = plan_fft!(tmp, 2, FFTW.MEASURE)
    p_ifft! = plan_ifft!(tmp, 2, FFTW.MEASURE)
    # p_fft! = plan_fft!(tmp, 2, flags=FFTW.MEASURE)
    # p_ifft! = plan_ifft!(tmp, 2, flags=FFTW.MEASURE)

    P_k = Vector{Complex{T}}(nele)
    P_x2 = Vector{Complex{T}}(nele)

    k0 = 2π / (nele * dx)
    @inbounds for i in 1:nele
        x = i * dx # coordinate
        P_x2[i] = exp(im * H.m * H.ω^2 * x^2 * dt / 4)

        k1 = i - 1
        k2 = k1 - nele
        k = ifelse(k1 + k2 <= 0, k1, k2) * k0
        P_k[i] = exp(im * k^2 * dt / (2 * H.m))
    end

    # P_σ = exp(im H_σ Δt)
    #     = exp(im Ω (cos(δ t + k_drive x) σ_x +
    #                 sin(δ t + k_drive x) σ_y) Δt)
    #     = cos(Ω Δt) + im * (cos(δ t + k_drive x) σ_x +
    #                         sin(δ t + k_drive x) σ_y) * sin(Ω Δt)
    #     = cos(Ω Δt) + im cos(δ t + k_drive x) sin(Ω Δt) σ_x +
    #       im sin(δ t + k_drive x) sin(Ω Δt) σ_y
    #     = [cos(Ω Δt), im exp(im(δ t + k_drive x)) sin(Ω Δt)
    #        im exp(-im(δ t + k_drive x)) sin(Ω Δt), cos(Ω Δt)]

    P_σ11 = Matrix{Complex{T}}(nele, nstep)
    P_σ12 = Matrix{Complex{T}}(nele, nstep)
    P_σ22 = Matrix{Complex{T}}(nele, nstep)

    cos_dt = cos(H.Ω * dt)
    sin_dt = sin(H.Ω * dt)
    @inbounds for j in 1:nstep
        t = j * dt + dt / 2
        θ_t = H.δ * t
        for i in 1:nele
            x = i * dx # coordinate
            θ_x = H.k_drive * x
            θ = θ_t + θ_x

            # P_σ12[i, j] = im exp(im θ) sin_dt
            #             = (im cos(θ) - sin(θ)) sin_dt

            P_σ11[i, j] = P_σ22[i, j] = cos_dt
            P_σ12[i, j] = (im * cos(θ) - sin(θ)) * sin_dt
        end
    end

    Propagator1D(H, dt, dx, nstep, nele,
                 tmp, p_fft!, p_ifft!,
                 P_k, P_x2, P_σ11, P_σ12, P_σ22)
end

function propagate{T}(P::Propagator1D{T},
                      ψ0::Matrix{Complex{T}}, # 2 x nele
                      ψs::Array{Complex{T}, 3} # 2 x nele x (nstep + 1)
                      )
    @inbounds for i in 1:P.nele
        ψs[1, i, 1] = ψ0[1, i]
        ψs[2, i, 1] = ψ0[2, i]
    end
    @inbounds for i in 2:(P.nstep + 1)
        for j in 1:P.nele
            p_x2 = P.P_x2[j]
            P.tmp[1, j] = ψs[1, j, i - 1] * p_x2
            P.tmp[2, j] = ψs[2, j, i - 1] * p_x2
        end
        P.p_fft!(P.tmp)
        # P.p_fft! * P.tmp
        for j in 1:P.nele
            p_k = P.P_k[j]
            P.tmp[1, j] *= p_k
            P.tmp[2, j] *= p_k
        end
        P.p_ifft!(P.tmp)
        # P.p_ifft! * P.tmp
        for j in 1:P.nele
            p_x2 = P.P_x2[j]
            ψ_e = P.tmp[2, j] * p_x2
            ψ_g = P.tmp[1, j] * p_x2

            T12 = P.P_σ12[j, i - 1]
            T11 = P.P_σ11[j, i - 1]
            T22 = P.P_σ22[j, i - 1]
            T21 = conj(T12)

            # ψs[2, j, i] = T11 * ψ_e + T12 * ψ_g
            # ψs[1, j, i] = T22 * ψ_g + T21 * ψ_e
            ψs[2, j, i] = ψ_e
            ψs[1, j, i] = ψ_g
        end
    end
    ψs
end

function propagate{T}(P::Propagator1D{T}, ψ0::Matrix{Complex{T}})
    ψs = Array{Complex{T}}(2, P.nele, P.nstep + 1)
    propagate(P, ψ0, ψs)
end

grid_size = 2048
grid_space = 0.02e-6

x_center = (grid_size + 1) * grid_space / 2

# m here is actually m / ħ
m = 22.98977e-3 / 6.02214129e23 / 1.0545717253362894e-34
# (m ω center) (k_emit Γ) (k_drive Ω δ)
H = MagicHarmonic1D(m, 2π * 200e3, x_center,
                    2π / 589e-9, 2π * 10e6,
                    2π / 589e-9, 2π * 5e6, 2π * 5e6)

ψ0 = Array{Complex128}(2, grid_size)

for i in 1:grid_size
    ψ0[1, i] = exp(-((i * grid_space - x_center + 2e-6) / (589e-9 * 10))^2)
    ψ0[2, i] = 0
end

# H::MagicHarmonic1D{T}, dt::T, dx::T, nstep, nele
const P = Propagator1D(H, 5e-8, grid_space, 10000, grid_size)

println("start")

@time ψs = propagate(P, ψ0)
gc()
@time ψs = propagate(P, ψ0)

# @profile ψs = propagate(P, ψ0)
# Profile.print(C=true)


# using PyPlot

# img = Array{Float64}(grid_size, size(ψs, 3))

# for i in 1:size(img, 2)
#     sum = 0.0
#     for j in 1:size(img, 1)
#         img[j, i] = abs2(ψs[1, j, i]) + abs2(ψs[2, j, i])
#         sum += img[j, i]
#     end
#     # println((i, sum))
# end

# figure()
# imshow(img)
# colorbar()

# # figure()
# # imshow(log(log1p(absy[:, 10:end])))
# # colorbar()

# # figure()
# # plot(absy[:, 1])
# # plot(absy[:, end])

# # figure()
# # plot(absy[:, 1] - absy[:, end])

# show()
