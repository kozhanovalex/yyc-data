#!/usr/bin/julia

module Format

function fp_digit(io::IO, a::AbstractFloat, d::Int)
    isfinite(a) || throw(ArgumentError("Invalid floating point number $a"))
    isneg = false
    if a < 0
        a = -a
        isneg = true
    end
    ten = oftype(a, 10)
    scaled = a * ten^d
    if !isfinite(scaled) || eps(scaled) > 1
        throw(ArgumentError("$a does not have enough precision for $d digits"))
    end
    scaled_int = round(Integer, scaled)
    isneg && write(io, '-')
    if d == 0
        show(io, scaled_int)
        return
    end

    ten_int_n = oftype(scaled_int, 10)^d
    int_part = scaled_int ÷ ten_int_n
    float_part = scaled_int % ten_int_n
    show(io, int_part)
    d == 0 && return
    write(io, '.')
    if float_part == 0
        for i in 1:d
            write(io, '0')
        end
    else
        float_digits = floor(Integer, log10(float_part)) + 1
        @assert float_digits <= d
        for i in 1:(d - float_digits)
            write(io, '0')
        end
        show(io, float_part)
    end
    return
end

@enum ExpType Exp Ten Sci

immutable Unc{T<:AbstractFloat}
    a::T
    s::T
    exp_type::ExpType
    (::Type{Unc{T}}){T}(a, s, exp_type=Exp) = new{T}(a, s, exp_type)
end
Unc{T<:AbstractFloat}(a::T, s::T, exp_type=Exp) = Unc{T}(a, s, exp_type)
Unc(a, b, exp_type=Exp) = Unc(promote(float(a), float(b))..., exp_type)

function Base.show(io::IO, v::Unc)
    a = v.a
    s = v.s
    if s <= 0
        show(io, a)
        return
    end
    exp_type = v.exp_type

    ten = oftype(s, 10)

    ls = floor(Integer, log10(s))
    # First two digits of the uncertainty
    fs = floor(Int, s * ten^(1 - ls))
    @assert 10 <= fs < 100
    # Whether we should use scientific notation
    sci = ls >= 2 || max(abs(a), s) < 0.1

    if sci
        if a == 0
            fa = a
            # Exponent
            la = ls
            # Number of digits after the decimal point
            dl = one(la)
        elseif abs(a) <= s
            fa = a * ten^-ls
            la = ls
            dl = one(la)
        else
            la = floor(Integer, log10(abs(a)))
            fa = a * ten^-la
            dl = la - ls + 1
        end
        @assert dl >= 1
        fp_digit(io, fa, dl)
        write(io, '(')
        show(io, fs)
        if exp_type == Exp
            write(io, ")e")
            show(io, la)
        elseif exp_type == Ten
            write(io, ")*10^")
            show(io, la)
        else
            write(io, ")\\times10^{")
            show(io, la)
            write(io, '}')
        end
    else
        fp_digit(io, a, 1 - ls)
        write(io, '(')
        show(io, fs)
        write(io, ')')
    end
    return
end
unc(a, b, exp_type=Exp) = sprint(show, Unc(a, b, exp_type))

end
