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

  b) Optionnal : create a new branch with your name in case you would like to push your configs

```
git branch $USER # Create branch with $USER name
git checkout $USER # Switch to $USER branch
```

3) Launch RStudio

- Load required libray and load environment file:
```
library(dotenv) # Load dotenv for R. install it before with install.packages("dotenv")
load_dot_env(file = "/path/to/geoflow-g2oi/.env")
```

- Execute GeoFlow
```
library(geoflow) # Load geoflow inside R
executeWorkflow("/path/to/geoflow-g2oi/config.json")
```


* /!\ When you make change to your `.env` you need to reload the file with content available in part 3 of this readme.

* Note:
These configs files use [![GeoFlow](https://zenodo.org/badge/DOI//10.5281/zenodo.3138920.svg)](https://doi.org//10.5281/zenodo.3138920) from [GeoFlow Repository](https://github.com/r-geoflow/geoflow)
