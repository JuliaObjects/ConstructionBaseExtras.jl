# ConstructionBaseExtras

[![Build Status](https://github.com/JuliaObjects/ConstructionBaseExtras.jl/workflows/CI/badge.svg)](https://github.com/JuliaObjects/ConstructionBaseExtras.jl/actions?query=workflow%3ACI)
[![Codecov](https://codecov.io/gh/JuliaObjects/ConstructionBaseExtras.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/JuliaObjects/ConstructionBaseExtras.jl)


> [!WARNING] 
> This package is deprecated, the functionaly is now included as an extension to ConstructionBase.jl

ConstructionBaseExtras.jl provides additional extensions to ConstructionBase.jl, 
that allows modifying immutable objects from other packages in Setfield.jl, Accessors.jl, BangBang.jl,
and Flatten.jl. It's a stop-gap measure until [first-class conditional modules](https://github.com/JuliaLang/Pkg.jl/issues/1285)
are available, or packages decide to implement the necessary methods themselves.

Note: use of Requires.jl means that dependency compat bounds cannot be set.
However, these types are not likely to change frequently. But manually fixing
package versions in a Manifest.toml file is recommended for reproducibility.

This initially includes StaticArrays.jl, but will be expanded as more types
are found to fail with `constructorof`, `setproperties` or `getproperties`.

Please make an issue for any objects in other packages that cause errors in
these methods.
