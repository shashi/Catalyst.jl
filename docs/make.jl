using Documenter
using Catalyst, ModelingToolkit

makedocs(
    sitename = "Catalyst.jl",
    authors = "Samuel Isaacson",
    format = Documenter.HTML(prettyurls = (get(ENV, "CI", nothing) == "true")),
    modules = [Catalyst,ModelingToolkit],
    doctest = false,
    clean = true,
    pages = Any[
        "Home" => "index.md",
        "API" => Any[
            "api/catalyst_api.md"
        ]
    ]
)

deploydocs(
   repo = "github.com/SciML/Catalyst.jl.git";
   push_preview = true
)