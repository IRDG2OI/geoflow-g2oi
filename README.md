# GEOFLOW CONFIGS

# USAGE 

1) Clone repository:
```
git clone https://github.com/IRDG2OI/geoflow-g2oi
```

2) Configure environment file:
```
cp .env.sample .env && nano .env # Edit file to match your credentials and preferences
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
executeWorkflow("sample_config_shp_separate_credentials.json")
```