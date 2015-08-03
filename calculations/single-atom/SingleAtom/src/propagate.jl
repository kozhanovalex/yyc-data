#!/usr/bin/julia -f

module Propagate

using ..Utils
using ..System
import ..Optical

immutable HMotionCache{T,N}
    E_k::Vector{T}
    P_k::SoCVector{T}

    E_x::NTuple{N,Vector{T}}
    P_x2::NTuple{N,SoCVector{T}}
end

@generated function HMotionCache{M<:MotionSystem}(sys::M, _dx, _dt, nele)
    NPots = length(System.get_potential_types(M))
    T = System.get_value_type(M)
    init_expr = quote
        dx = $T(_dx)
        dt = $T(_dt)
        m = sys.mass
        k0 = $T(2π) / (nele * dx)
        nele_2 = nele ÷ 2
        E_k = Vector{$T}(nele)
        P_k = StructOfArrays(Complex{$T}, nele)
        E_x = ($([:(Vector{$T}(nele)) for i in 1:NPots]...),)
        P_x2 = ($([:(StructOfArrays(Complex{$T}, nele)) for i in 1:NPots]...),)
    end
    calc_k = quote
        @inbounds for i in 1:nele
            k1 = i - 1
            k2 = k1 - nele
            k = ifelse(k1 + k2 <= 0, k1, k2) * k0

            e_k = get_kinetic(m, k)
            E_k[i] = e_k
            P_k[i] = exp(im * e_k * dt)
        end
    end
    e_temps = [gensym() for i in 1:NPots]
    calc_x = quote
        @inbounds for i in 1:nele
            x = (i - nele_2) * dx
            $([:($(e_temps[i]) = get_potential(sys.potentials[$i], m, x))
               for i in 1:NPots]...)
            $([:(E_x[$i][i] = $(e_temps[i])) for i in 1:NPots]...)
            $([:(P_x2[$i][i] = exp(im * dt / 2 * $(e_temps[i])))
               for i in 1:NPots]...)
        end
    end
    quote
        $init_expr
        $calc_k
        $calc_x
        HMotionCache{$T,$NPots}(E_k, P_k, E_x, P_x2)
    end
end

# Optical cache

immutable OpticalCache{T,NDri,NDec,Tra}
    drives::NTuple{NDri,TrigCache{T}}
    decays::NTuple{NDec,TrigCache{T}}
    trackers::Tra
end

@inline function call{T,NDri,NDec,Tra}(::Type{OpticalCache{T,NDri,NDec}},
                                       drives, decays, trackers::Tra)
    OpticalCache{T,NDri,NDec,Tra}(drives, decays, trackers)
end

@generated function OpticalCache{M<:MotionSystem}(sys::M, _dx, _dt, nele)
    T = System.get_value_type(M)
    NDri = length(System.get_drive_types(M))
    NDec = length(System.get_transition_types(M))

    init_expr = quote
        dx = $T(_dx)
        dt = $T(_dt)
        nele_2 = nele ÷ 2
        xs = ((1:nele) - nele_2) * dx
    end

    calc_drives = quote
        drives = ($([:(TrigCache(sys.drives[$i], xs)) for i in 1:NDri]...),)
    end
    calc_decays = quote
        decays = ($([:(TrigCache(sys.intern.transitions[$i], xs))
                     for i in 1:NDec]...),)
    end
    calc_trackers = quote
        trackers = ($([:(Optical.PhaseTracker(sys.drives[$i]))
                       for i in 1:NDri]...),)
    end

    quote
        $init_expr
        $calc_drives
        $calc_decays
        $calc_trackers
        OpticalCache{$T,$NDri,$NDec}(drives,decays,trackers)
    end
end

# Coupling cache

end
