#!/usr/bin/julia -f

using SingleAtom

@generated function test_scale{N,T}(nele, factors::NTuple{N,Complex{T}}, nloop)
    splat_factors = [gensym(:splat) for i in 1:N]
    init_ex = quote
        ary = Matrix{Complex{T}}(nele, $N)
        soary = convert(StructOfArrays, ary)
        factor2 = exp(rand(T, nele) * im)
        sofactor2 = convert(StructOfArrays, factor2)
        $([:($(splat_factors[j]) = factors[$j]) for j in 1:N]...)
    end
    rand_ex = quote
        rand!(ary)
        unsafe_copy!(soary, ary)
    end
    var_names = [gensym(:ele) for i in 1:N]
    eff_factors = [gensym(:factor) for i in 1:N]
    aos_run = quote
        @inbounds for i in 1:nele
            $([:($(var_names[j]) = ary[i, $j]) for j in 1:N]...)
            factor2i = factor2[i]
            $([:($(eff_factors[j]) = factor2i * $(splat_factors[j]))
               for j in 1:N]...)
            $([:(ary[i, $j] = $(var_names[j]) * $(eff_factors[j]))
               for j in 1:N]...)
        end
    end
    aos_split_run = quote
        @inbounds for j in 1:$N
            splat_factor = factors[j]
            for i in 1:nele
                ary[i, j] *= sofactor2[i] * splat_factor
            end
        end
    end
    soa_run = quote
        unsafe_copy!(soary, ary)
        @inbounds @simd for i in 1:nele
            factor2i = sofactor2[i]
            $([:($(eff_factors[j]) = factor2i * $(splat_factors[j]);
                 $(var_names[j]) = soary[i, $j];
                 soary[i, $j] = $(var_names[j]) * $(eff_factors[j]))
               for j in 1:N]...)
        end
        unsafe_copy!(ary, soary)
    end
    soa_split_run = quote
        unsafe_copy!(soary, ary)
        @inbounds for j in 1:2:$(N - 1)
            splat_factor = factors[j]
            @simd for i in 1:nele
                soary[i, j] *= sofactor2[i] * splat_factor
                soary[i, j + 1] *= sofactor2[i] * splat_factor
            end
        end
        @inbounds if $N % 2 != 0
            splat_factor = factors[$N]
            @simd for i in 1:nele
                soary[i, $N] *= sofactor2[i] * splat_factor
            end
        end
        unsafe_copy!(ary, soary)
    end
    quote
        $init_ex
        $rand_ex
        t1 = @elapsed for n in 1:nloop
            $aos_run
        end
        $rand_ex
        t2 = @elapsed for n in 1:nloop
            $aos_split_run
        end
        $rand_ex
        t3 = @elapsed for n in 1:nloop
            $soa_run
        end
        $rand_ex
        t4 = @elapsed for n in 1:nloop
            $soa_split_run
        end
        t1 / nloop, t2 / nloop, t3 / nloop, t4 / nloop
    end
end

get_factors(n) = if n == 1
    (exp(im * 1f0),)
else
    (map(x->exp(im * x), linspace(0f0, 10f0, n))...)
end

function print_strs_aligned(strs, max_len)
    len = length(strs)
    for i in 1:len
        str = strs[i]
        str_len = length(str)
        print(" " ^ (max_len - str_len), str)
        if i != len
            print("| ")
        end
    end
end

function test_nele(nele, _ndims, nloop)
    ts = [test_scale(nele, get_factors(ndim), nloop) for ndim in _ndims]
    ndims_str = [@sprintf("%d", ndim) for ndim in _ndims]
    taos_str = [@sprintf("%.2e", ts[i][1]) for i in 1:length(_ndims)]
    taos_split_str = [@sprintf("%.2e", ts[i][2]) for i in 1:length(_ndims)]
    tsoa_str = [@sprintf("%.2e", ts[i][3]) for i in 1:length(_ndims)]
    tsoa_split_str = [@sprintf("%.2e", ts[i][4]) for i in 1:length(_ndims)]
    max_len = maximum(length, [ndims_str; taos_str; taos_split_str;
                               tsoa_str; tsoa_split_str])
    println("* `nele=$nele`")
    println()
    print("|            ndim| ")
    print_strs_aligned(ndims_str, max_len)
    println("|")
    println("|----------------|", ("-" ^ (max_len + 1) * "|") ^ length(_ndims))

    print("|Time       (AoS)| ")
    print_strs_aligned(taos_str, max_len)
    println("|")

    print("|Time (AoS split)| ")
    print_strs_aligned(taos_split_str, max_len)
    println("|")

    print("|Time       (SoA)| ")
    print_strs_aligned(tsoa_str, max_len)
    println("|")

    print("|Time (SoA split)| ")
    print_strs_aligned(tsoa_split_str, max_len)
    println("|")
    println()
end

@generated function test_scale2{N,T}(nele, factors::NTuple{N,Complex{T}}, nloop)
    splat_factors = [gensym(:splat) for i in 1:N]
    init_ex = quote
        ary = Matrix{Complex{T}}(nele, $N)
        soary = convert(StructOfArrays, ary)
        factor2 = exp(rand(T, nele) * im)
        sofactor2 = convert(StructOfArrays, factor2)
    end
    var_names = [gensym(:ele) for i in 1:N]
    eff_factors = [gensym(:factor) for i in 1:N]
    soa_split_run = quote
        unsafe_copy!(soary, ary)
        @inbounds for j in 1:$N
            splat_factor = factors[j]
            @simd for i in 1:nele
                soary[i, j] *= sofactor2[i] * splat_factor
            end
        end
        unsafe_copy!(ary, soary)
    end
    quote
        $init_ex

        # $soa_run
        $soa_split_run

        nothing
    end
end

Base.code_llvm_raw(test_scale2, Base.typesof(128, get_factors(2), 100000))

exit()

test_nele(64, [1, 3, 10, 30], 200_000)
test_nele(128, [1, 3, 10, 30], 100_000)
test_nele(256, [1, 3, 10, 30], 50_000)
test_nele(512, [1, 3, 10, 30], 25_000)
test_nele(1024, [1, 3, 10, 30], 12_500)
