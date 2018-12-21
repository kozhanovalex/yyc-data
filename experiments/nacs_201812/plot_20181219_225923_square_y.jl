#!/usr/bin/julia

push!(LOAD_PATH, joinpath(@__DIR__, "../../lib"))

import NaCsCalc.Format: Unc, Sci
using NaCsCalc.Utils: interactive
using NaCsData
using NaCsPlot
using PyPlot
using DataStructures
using LsqFit

const inames = ["data_20181219_225923.mat"]
const datas = [NaCsData.load_striped_mat(joinpath(@__DIR__, "data", iname)) for iname in inames]
const maxcnts = [typemax(Int)]
const specs_na = [OrderedDict(
    :_xm2f=>1:1.0:81,
    :yf=>-530:10:670,
    :_y0=>0:1.0:25,
    :_ym1=>0:2.0:50
)]
const specs_cs = [OrderedDict(
    :xm2f=>-249 .+ (-40:1.0:40),
    :yf=>-180:3.0:180,
    :_y0=>0:2.0:50,
    :_ym1=>0:8.0:200
)]
select_datas(datas, selector, maxcnts, specs) =
    [NaCsData.split_data(NaCsData.select_count(data..., selector, maxcnt), spec)
     for (data, maxcnt, spec) in zip(datas, maxcnts, specs)]

function fit_survival(model, data, p0; plotx=nothing, plot_lo=nothing, plot_hi=nothing,
                      use_unc=true, plot_scale=1.1)
    if use_unc
        params, ratios, uncs = NaCsData.get_values(data)
    else
        params, ratios, uncs = NaCsData.get_values(data, 0.0)
    end
    if plotx === nothing
        lo = minimum(params)
        hi = maximum(params)
        span = hi - lo
        mid = (hi + lo) / 2
        if plot_lo === nothing
            plot_lo = mid - span * plot_scale / 2
            if plot_lo * lo <= 0
                plot_lo = 0
            end
        end
        if plot_hi === nothing
            plot_hi = mid + span * plot_scale / 2
            if plot_hi * hi <= 0
                plot_hi = 0
            end
        end
        plotx = linspace(plot_lo, plot_hi, 10000)
    end
    if use_unc
        fit = curve_fit(model, params, ratios[:, 2], uncs[:, 2].^-(2/3), p0)
    else
        fit = curve_fit(model, params, ratios[:, 2], p0)
    end
    param = fit.param
    unc = estimate_errors(fit)
    return (param=param, unc=unc,
            uncs=Unc.(param, unc, Sci),
            plotx=plotx, ploty=model.(plotx, (fit.param,)))
end

const datas_na = select_datas(datas, NaCsData.select_single((1,), (3,)), maxcnts, specs_na)
const datas_cs = select_datas(datas, NaCsData.select_single((2,), (4,)), maxcnts, specs_cs)

data_na_yf = datas_na[1][:yf]
# data_na_y0 = datas_na[1][:y0]
# data_na_ym1 = datas_na[1][:ym1]
data_cs_xm2f = datas_cs[1][:xm2f]
data_cs_yf = datas_cs[1][:yf]
# data_cs_y0 = datas_cs[1][:y0]
# data_cs_ym1 = datas_cs[1][:ym1]

const prefix = joinpath(@__DIR__, "imgs", "data_20181219_225923_square_rabiy")

figure()
NaCsPlot.plot_survival_data(data_na_yf, fmt="C0")
grid()
ylim([0, 1])
title("Na Y square pulse")
xlabel("Frequency (kHz)")
ylabel("Survival")
NaCsPlot.maybe_save("$(prefix)_na_yf")

figure()
NaCsPlot.plot_survival_data(data_cs_yf, fmt="C0")
grid()
ylim([0, 1])
title("Cs Y square pulse")
xlabel("Frequency (kHz)")
ylabel("Survival")
NaCsPlot.maybe_save("$(prefix)_cs_yf")

figure()
NaCsPlot.plot_survival_data(data_cs_xm2f, fmt="C0")
grid()
ylim([0, 1])
title("Cs X -2 order")
xlabel("Frequency (kHz)")
ylabel("Survival")
NaCsPlot.maybe_save("$(prefix)_cs_xm2f")

# figure()
# NaCsPlot.plot_survival_data(data_na_y0, fmt="C0", label="0")
# NaCsPlot.plot_survival_data(data_na_ym1, fmt="C1", label="-1")
# legend()
# grid()
# ylim([0, 1])
# title("Na Y square pulse")
# xlabel("Time (\$\\mu s\$)")
# ylabel("Survival")
# NaCsPlot.maybe_save("$(prefix)_na_yt")

# figure()
# NaCsPlot.plot_survival_data(data_cs_y0, fmt="C0", label="0")
# NaCsPlot.plot_survival_data(data_cs_ym1, fmt="C1", label="-1")
# legend()
# grid()
# ylim([0, 1])
# title("Cs Y square pulse")
# xlabel("Time (\$\\mu s\$)")
# ylabel("Survival")
# NaCsPlot.maybe_save("$(prefix)_cs_yt")

NaCsPlot.maybe_show()
