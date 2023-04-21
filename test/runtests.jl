using LocalExample
using Test

@testset "LocalExample.jl" begin
    a = LocalExample.exp()
    @test typeof(a) == String
end
