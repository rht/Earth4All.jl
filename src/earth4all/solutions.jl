using ModelingToolkit
using DifferentialEquations

function run_tltl_solution()
    return WorldDynamics.solve(run_tltl(), (1980, 2100), solver=Rodas4(), dt=0.015625, dtmax=0.015625)
end

function run_gl_solution()
    return WorldDynamics.solve(run_gl(), (1980, 2100), solver=Rodas4(), dt=0.015625, dtmax=0.015625)
end

function run_e4a_solution(; kwargs...)
    return WorldDynamics.solve(run_e4a(; kwargs...), (1980, 2100), solver=Rodas4(), dt=0.015625, dtmax=0.015625)
end
