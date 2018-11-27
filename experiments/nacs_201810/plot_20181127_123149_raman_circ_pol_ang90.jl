#!/usr/bin/julia

push!(LOAD_PATH, joinpath(@__DIR__, "../../lib"))

import NaCsCalc.Format: Unc, Sci
using NaCsCalc.Utils: interactive
using NaCsData
using NaCsPlot
using PyPlot
using DataStructures
using LsqFit

const iname_a = joinpath(@__DIR__, "data", "data_20181127_123149.mat")
const params_a, logicals_a = NaCsData.load_striped_mat(iname_a)
data_nacs_a = NaCsData.select_count(params_a, logicals_a, NaCsData.select_single((1, 2), (3, 4)))

const spec_a = (298.170 .+ (-10:1:10) .* 1e-3,
                298.170 .+ (-10:1:10) .* 1e-3,
                298.170 .+ (-10:1:10) .* 1e-3)

const split_nacs_a = NaCsData.split_data(data_nacs_a, spec_a)

data_0 = split_nacs_a[1]
data_m30 = split_nacs_a[2]
data_p30 = split_nacs_a[3]

const prefix = joinpath(@__DIR__, "imgs", "data_20181127_123149_raman_circ_pol_ang90")

figure()
NaCsPlot.plot_survival_data(data_m30, fmt="C0o-", label="-90\${}^\\circ\$")
NaCsPlot.plot_survival_data(data_p30, fmt="C1o-", label="90\${}^\\circ\$")
grid()
legend()
ylim([0.2, 0.9])
title("Raman spectrum")
xlabel("Detuning (\$MHz\$)")
ylabel("Survival")
NaCsPlot.maybe_save("$(prefix)")

NaCsPlot.maybe_show()
