# LocalExample.jl

[![Build Status](https://github.com/ZenanH/LocalExample.jl/actions/workflows/CI.yml/badge.svg)](https://github.com/ZenanH/LocalExample.jl/actions/workflows/CI.yml)

💽 Local example for Julia package (without official registration)

## How to create new package

1. generate package template by `PkgTemplates.jl`
    ```julia
    using Pkg
    Pkg.add("PkgTemplates")

    using PkgTemplates

    t = Template(;
        user="your-GitHub-username",
        authors=["your-name"],
        plugins=[
            License(name="MIT"),
            Git(),
            GitHubActions(),
        ],
    )

    t("YourPackageName")
    ```

2. add source files and test file
3. cd to `~/.julia/dev` or `%USERNAME%/.julia/dev`, launch Julia
4. in Pkg mode, we can add other packages
    ```julia
    julia> ]
    (@v1.8) pkg> activate YourPackageName
    ```

5. commit to github repo (package's name end with `.jl`)

Final folder's structure:
```
%USERNAME%/.julia/dev/YourPackageName
│   .gitignore
│   LICENSE
│   Project.toml
│   README.md
│
├───.github
│   └───workflows
│           CI.yml
│           CompatHelper.yml
│           TagBot.yml
│
├───.vscode
│       settings.json
│
├───src
│       functions.jl
│       LocalExample.jl
│
└───test
        runtests.jl
```













## Installation

Enter Julia REPL's Pkg mode:

```julia
julia> ]
(@v1.8) pkg> add https://github.com/ZenanH/LocalExample.jl.git
```
This will install this package into `Project.toml` file.

## Dev

In Julia REPL's Pkg mode:

```julia
julia> ]
(@v1.8) pkg> dev LocalExample
```

This will download the package into default dir `~/.julia/dev` or `%USERNAME%/.julia/dev`.