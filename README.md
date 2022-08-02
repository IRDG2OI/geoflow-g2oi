# GEOFLOW CONFIGS

# USAGE 

1) Clone repository:
```
git clone https://github.com/IRDG2OI/geoflow-g2oi
```

2) Configure environment file:
```
cp env.sample .env && nano .env # Edit file to match your credentials and preferences
```


3) Launch RStudio

- Load required libray and load environment file:
```
library(dotenv)
load_dot_env(file = ".env")
```

- Execute GeoFlow
```
library(geoflow)
executeWorkflow("config.json")
```

* Note:
These configs files use [![GeoFlow](https://zenodo.org/badge/DOI//10.5281/zenodo.3138920.svg)](https://doi.org//10.5281/zenodo.3138920) from [![GeoFlow Repository](https://github.com/eblondel/geoflow)]
