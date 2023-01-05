using BenchmarkTools
using Test
using Error190Beta

function runtest()
    @belapsed main(1000)
end

@test runtest() < 1.0
