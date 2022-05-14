#!/usr/bin/julia

include("fill_electrodes.jl")

function generate_solution_plots(outdir, names, data)
    mkpath(outdir, mode=0o755)
    for i in 1:size(data, 1)
        vals = Dict{String,Float64}("GND"=>0.0)
        for j in 1:length(names)
            vals[names[j]] = data[i, j]
        end
        write(joinpath(outdir, "line_$i.svg"), fill_electrode(vals))
    end
end
