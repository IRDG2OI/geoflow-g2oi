library(dotenv) # Load dotenv for R. install it before
load_dot_env(file = ".env")

# LOGIN to Zenodo
ztoken <- Sys.getenv("ZENODO_SANDBOX_TOKEN")
zenodo <- ZenodoManager$new(
  url = "https://sandbox.zenodo.org/api",
  token = ztoken, 
  logger = "DEBUG" 
)


# Create an empty record
myrec <- ZenodoRecord$new()
myrec$setTitle("UAV Data - Madagascar 2023")
myrec$setDescription("UAV Data of Madagascar mission acquired in 2023")
myrec$setUploadType("dataset")
myrec$addCreator(firstname = "Sylvain", lastname = "Poulain", affiliation = "IRD", orcid = "0009-0005-9789-9095")
myrec$setLicense("mit")
myrec$setAccessRight("open")
myrec$addCommunity("uav")

# Get Depositions
my_zenodo_records <- zenodo$getDepositions()