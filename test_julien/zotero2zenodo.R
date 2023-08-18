library(dplyr)
# df <- read.csv('Biodiversity.csv')
df <- read.csv('Commission Ocean Indien.csv')
colnames(df)

# df$File.Attachments!=""
df_dcmi <- df %>% select(Identifier=Key,
                         Description=Abstract.Note,
                         Title=Title,
                         Subject=Manual.Tags,
                         Creator=Author,
                         Date=Date.Added,
                         TemporalCoverage=Publication.Year,
                         Type=Item.Type,
                         Relation=Url,
                         Provenance=Url,
                         Data=File.Attachments
) %>% filter(Description!="abstract:",Data!="") %>% mutate(
                           Identifier = paste0("id:",Identifier),
                           Description = paste0("abstract:",Description),
                           Title = paste0("title:",Title),
                           # Creator = paste0("metadata:",substr(gsub(pattern = " ",".",gsub(pattern = ".@ird.","@ird.",gsub(pattern = ", ",".",gsub(pattern = "; ","@ird.fr_\nmetadata:",Creator)))), 1, nchar(Creator)-1),"@ird.fr"),
                           Creator = "metadata:COI-CdD@coi-ioc.org_\npointOfContact:COI-CdD@coi-ioc.org_\nowner:secretariat@coi-ioc.org_\npublisher:secretariat@coi-ioc.org_\nfunder:secretariat@coi-ioc.org",
                           Date=paste0("publication:",substr(Date,start = 1,stop = 10)),
                           Language="eng",
                           Subject=paste0("theme[General]:Commission océan Indien,",gsub(pattern = ";",",",Subject),"_"),
                           Type="dataset",
                           SpatialCoverage="srid:4326",
                           TemporalCoverage=paste0(TemporalCoverage,"/",TemporalCoverage),
                           Format="",
                           Relation="",
                           Rights="",
                           Provenance="",
                           Data=paste0("source:",Data),
                         ) #%>% slice_head(n=5)
                           
# df_dcmi$Creator <- for (i in 1:length(strsplit(df_dcmi$Creator,";"))){cat("toto")}
# if (!is.na(df_dcmi$Relation)){df_dcmi$Relation <-paste0("Url[example of Url]@",df_dcmi$Relation)}
colnames(df_dcmi)
write.csv(df_dcmi,file = "test.csv",row.names = FALSE)
# df_dcmi$Date
