# Earth4All.jl
[![](https://img.shields.io/badge/docs-dev-blue.svg)](https://worlddynamics.github.io/Earth4All.jl/)
[![DOI](https://zenodo.org/badge/629418296.svg)](https://zenodo.org/badge/latestdoi/629418296)

Repository of the Julia implementation of the [Earth4All model](https://earth4all.life/the-science-rp/) using the [WorldDynamics framework](https://github.com/worlddynamics/WorldDynamics.jl), based on the [April 2023 Vensim version](https://web.archive.org/web/20220830093115/https://earth4all.life/the-science/) available [here](https://stockholmuniversity.app.box.com/s/uh7fjh52pvh7yx1mqfwqcyxdcvegrodf/folder/170558692760) (a copy is also available in the `vensim_source` folder of the current repository).

## How to run the model 

### Prerequisites

[Install Julia](https://julialang.org/) and clone the repository: 
```sh
git clone https://github.com/worlddynamics/Earth4All.jl
```

### Setting up the environment

After starting the Julia REPL in the repository folder, we can instantiate the environment by running
```jl
julia> using Pkg
julia> Pkg.activate(".")
julia> Pkg.instantiate()
```

We can then load the `Earth4All` module and run a scenario (e.g. "Too Little Too Late") with 
```jl
julia> include("src/Earth4All.jl")
julia> sol = Earth4All.run_tltl_solution()
```

To obtain the plots of the main variables, we can run
```jl
julia> Earth4All.fig_baserun_tltl() # for the Too Little Too Late scenario
julia> Earth4All.fig_baserun_gl() # for the Giant Leap scenario
```

The plots should look like the two of the first line, instead the ones of the second line are produced with Vensim:

| ![image](https://github.com/worlddynamics/Earth4All.jl/assets/65721467/59dc60bd-58f7-4b35-9baa-3c87104705b8) | ![image](https://github.com/worlddynamics/Earth4All.jl/assets/65721467/c2384434-3cd7-4228-bfa3-62eef4793166) |
|---|---|
|![image](https://github.com/worlddynamics/Earth4All.jl/assets/65721467/3de4ce87-f1c8-4c9a-ad83-fb8d3e903f04) | ![image](https://github.com/worlddynamics/Earth4All.jl/assets/65721467/d9a3ca28-dcf7-462a-a07e-6d60dc985324) |

## White paper
- Pierluigi Crescenzi, Aurora Rossi, Emanuele Natale. *An open source implementation of the Earth4All integrated assessment model.* 2023. [hal-04293350](https://hal.science/hal-04293350)

## Acknowledgments 

This work has been supported by the French government, through the UCAJEDI and UCA DS4H Investments in the Future projects managed by the National Research Agency (ANR) with the reference number ANR-15-IDEX-0001 and ANR-17-EURE-0004.

<img src="https://indico.gssi.it/event/2/images/6-GSSI-Logo-R.png" style="width:270px;"/>

<img src="https://ds4h.univ-cotedazur.fr/medias/photo/uca-ds4h-france2030_1674577606814-png?ID_FICHE=1055467" style="width:500px;"/>

### How to cite this work
This work can be provisionally cited as follows:
```
@software{pierluigi_crescenzi_2023_8230404,
  author       = {Pierluigi Crescenzi and
                  Aurora Rossi and
                  Emanuele Natale and
                  contributors},
  title        = {Earth4All.jl: an implementation of the Earth4All model in Julia},
  month        = aug,
  year         = 2023,
  publisher    = {Zenodo},
  version      = {v0.1.0},
  doi          = {10.5281/zenodo.8230404},
  url          = {https://doi.org/10.5281/zenodo.8230404}
}
```
