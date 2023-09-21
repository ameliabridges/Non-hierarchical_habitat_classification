# Save running S1

# topo

slo<-raster("D:/OneDrive/OneDrive - University of Plymouth/In_prep_submittted_manuscripts/Howell_etal_Global_HC/Non-hierarchical_habitat_classification/InputLayers/Unprocessed/GEBCO2020_GoG_Slo_10km_WGS84.tif")
bbpi<-raster("D:/OneDrive/OneDrive - University of Plymouth/In_prep_submittted_manuscripts/Howell_etal_Global_HC/Non-hierarchical_habitat_classification/InputLayers/Unprocessed/GEBCO2020_GoG_BBPI_10km_WGS84.tif")
fbpi<-raster("D:/OneDrive/OneDrive - University of Plymouth/In_prep_submittted_manuscripts/Howell_etal_Global_HC/Non-hierarchical_habitat_classification/InputLayers/Unprocessed/GEBCO2020_GoG_FBPI_10km_WGS84.tif")

prod<-raster("D:/OneDrive/OneDrive - University of Plymouth/In_prep_submittted_manuscripts/Howell_etal_Global_HC/Non-hierarchical_habitat_classification/InputLayers/Unprocessed/Yool_GoG_POC_10km_WGS84.tif")

temp<-raster("D:/OneDrive/OneDrive - University of Plymouth/In_prep_submittted_manuscripts/Howell_etal_Global_HC/Non-hierarchical_habitat_classification/InputLayers/Unprocessed/BO_GoG_Temp_10km_WGS84.tif")
sal<-raster("D:/OneDrive/OneDrive - University of Plymouth/In_prep_submittted_manuscripts/Howell_etal_Global_HC/Non-hierarchical_habitat_classification/InputLayers/Unprocessed/BO_GoG_Sal_10km_WGS84.tif")

gog_shp<-terra::vect("D:/OneDrive/OneDrive - University of Plymouth/In_prep_submittted_manuscripts/Howell_etal_Global_HC/Non-hierarchical_habitat_classification/InputLayers/Gulf_of_Guinea.shp")