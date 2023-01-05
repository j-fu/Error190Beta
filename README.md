MWE for julia 1.9.0-beta2
=========================

The package has BenchmarkTools ass dependency and as test dependency.
When unsing benchmarktools im nt he package via  `Error190Beta.main2()`,
everything is ok. Same with `include("test/runtests.jl").

However `Pkg.test("Error190Beta")` results in

```
[10810] signal (6.-6): Abgebrochen
in expression starting at /home/fuhrmann/.julia/packages/JSON/NeJ9k/src/Parser.jl:5
gsignal at /lib64/libc.so.6 (unknown line)
abort at /lib64/libc.so.6 (unknown line)
jl_restore_system_image_from_stream_ at /cache/build/default-amdci5-1/julialang/julia-release-1-dot-9/src/staticdata.c:3075
jl_restore_package_image_from_stream at /cache/build/default-amdci5-1/julialang/julia-release-1-dot-9/src/staticdata.c:3307
jl_restore_incremental_from_buf at /cache/build/default-amdci5-1/julialang/julia-release-1-dot-9/src/staticdata.c:3353
ijl_restore_package_image_from_file at /cache/build/default-amdci5-1/julialang/julia-release-1-dot-9/src/staticdata.c:3466
_include_from_serialized at ./loading.jl:949
_require_search_from_serialized at ./loading.jl:136
...

```
