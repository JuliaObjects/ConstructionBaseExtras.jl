using ConstructionBaseExtras, IntervalSets, Test, ConstructionBase

@testset "intervalsets" begin
    @test constructorof(typeof(1..2))(0.5, 1.5) === 0.5..1.5
    @test constructorof(typeof(OpenInterval(1, 2)))(0.5, 1.5) === OpenInterval(0.5, 1.5)
    @test setproperties(1..2, left=0.0) === 0.0..2.0
    @test setproperties(OpenInterval(1.0, 2.0), left=1, right=5) === OpenInterval(1, 5)
end