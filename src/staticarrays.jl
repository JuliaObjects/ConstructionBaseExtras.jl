using .StaticArrays

struct SArrayConstructor{S} end
struct MArrayConstructor{S} end
struct SizedArrayConstructor{S,N,M} end

(::SArrayConstructor{S})(args...) where {S} = SArray{S}(args...)
(::MArrayConstructor{S})(args...) where {S} = MArray{S}(args...)
(::SizedArrayConstructor{S,N,M})(data::AbstractArray{T,M}) where {S,T,N,M} = 
    SizedArray{S,T,N,M}(data)

ConstructionBase.constructorof(sa::Type{<:SArray{S}}) where {S} = SArrayConstructor{S}()
ConstructionBase.constructorof(sa::Type{<:MArray{S}}) where {S} = MArrayConstructor{S}()
ConstructionBase.constructorof(sa::Type{<:SizedArray{S,<:Any,N,M}}) where {S,N,M} = 
    SizedArrayConstructor{S,N,M}()

# static vectors don't even need the explicit size specification
ConstructionBase.constructorof(::Type{SVector}) = SVector
ConstructionBase.constructorof(::Type{MVector}) = MVector
