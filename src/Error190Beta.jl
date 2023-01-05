module Error190Beta
using BenchmarkTools

function main(n)
    sum(1:n)
end

function main2()
    @belapsed main(1000)
end

export main,main2

end # module Error190Beta
