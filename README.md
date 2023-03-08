# GEOFLOW CONFIGS

# USAGE

1) Clone repository:
```
git clone -b sample https://github.com/IRDG2OI/geoflow-g2oi
```

2) Configure environment file:

  a) Edit config file

```
cd geoflow-g2oi
cp env.sample .env && nano .env # Edit file to match your credentials and preferences
```
In `config.json`, variable `"hide_env_vars": "*"` allow to hide contents of `.env` file from logs or system printenv.

  b) Optionnal : create a new branch with your name in case you would like to push your configs

```
git branch $USER # Create branch with $USER name
git checkout $USER # Switch to $USER branch
```

3) Launch RStudio

- Execute GeoFlow
```
library(geoflow) # Load geoflow inside R
executeWorkflow("/path/to/geoflow-g2oi/config.json")
```



# Required software installation

To use this project , some R library are needed, below is a sample R script to install it:
(replace 16 by your numbers of vCores)

```
require("remotes")
packagithub <- c("eblondel/zen4R", "eblondel/geometa", "eblondel/geosapi", "eblondel/geonapi", "eblondel/ows4R", "eblondel/atom4R", "eblondel/geonode4R", "r-geoflow/geoflow")
options(Ncpus = 16)
getOption("Ncpus", 1L)
install_github(setdiff(packagithub, rownames(installed.packages())), upgrade = c("never"), force=TRUE)
```

* Note:
These configs files use [![GeoFlow](https://zenodo.org/badge/DOI//10.5281/zenodo.3138920.svg)](https://doi.org//10.5281/zenodo.3138920) from [![GeoFlow Repository](https://github.com/eblondel/geoflow)]
