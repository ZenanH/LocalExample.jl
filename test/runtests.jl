using LocalExample
using Test

@testset "LocalExample.jl" begin
    a = LocalExample.check_dev()
    @test typeof(a) == String
end
