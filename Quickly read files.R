# Save running S1

library(sdmpredictors)
library(raster)
library(tidyverse)
library(MultiscaleDTM)
library(terra)

wd<-getwd()
raw_input_layers_folder<-paste0(wd, "/InputLayers/Unprocessed")
clust_input_layers_folder<-paste0(wd, "/InputLayers")
output_layers_folder<-paste0(wd, "/OutputLayers")
results_folder<-paste0(wd, "/Results")

my_plot_theme <- function(...){
  
  ggplot2::theme_light()+
    ggplot2::theme(axis.line = ggplot2::element_line(colour = "grey50"),
                   axis.title.y = ggplot2::element_text(face="bold", angle=90),
                   axis.title.x = ggplot2::element_text(face="bold"),
                   panel.border = element_rect(colour = "black", fill=NA, linewidth=1),
                   plot.title = ggplot2::element_text(size=14,hjust=0.5),
                   legend.text.align = 0.5,
                   legend.title.align = 0,
                   axis.title = ggplot2::element_text(size=14,vjust=0.5),
                   axis.text.x = ggplot2::element_text(size = 12,
                                                       colour = "black"),
                   axis.text.y = ggplot2::element_text(colour = "black",
                                                       size = 12),
                   ...)
}

slo<-raster("D:/OneDrive/OneDrive - University of Plymouth/In_prep_submittted_manuscripts/Howell_etal_Global_HC/Non-hierarchical_habitat_classification/InputLayers/Unprocessed/GEBCO2020_GoG_Slo_10km_WGS84.tif")
bbpi<-raster("D:/OneDrive/OneDrive - University of Plymouth/In_prep_submittted_manuscripts/Howell_etal_Global_HC/Non-hierarchical_habitat_classification/InputLayers/Unprocessed/GEBCO2020_GoG_BBPI_10km_WGS84.tif")
fbpi<-raster("D:/OneDrive/OneDrive - University of Plymouth/In_prep_submittted_manuscripts/Howell_etal_Global_HC/Non-hierarchical_habitat_classification/InputLayers/Unprocessed/GEBCO2020_GoG_FBPI_10km_WGS84.tif")
prod<-raster("D:/OneDrive/OneDrive - University of Plymouth/In_prep_submittted_manuscripts/Howell_etal_Global_HC/Non-hierarchical_habitat_classification/InputLayers/Unprocessed/Yool_GoG_POC_10km_WGS84.tif")
temp<-raster("D:/OneDrive/OneDrive - University of Plymouth/In_prep_submittted_manuscripts/Howell_etal_Global_HC/Non-hierarchical_habitat_classification/InputLayers/Unprocessed/BO_GoG_Temp_10km_WGS84.tif")
sal<-raster("D:/OneDrive/OneDrive - University of Plymouth/In_prep_submittted_manuscripts/Howell_etal_Global_HC/Non-hierarchical_habitat_classification/InputLayers/Unprocessed/BO_GoG_Sal_10km_WGS84.tif")
gog_shp<-terra::vect("D:/OneDrive/OneDrive - University of Plymouth/In_prep_submittted_manuscripts/Howell_etal_Global_HC/Non-hierarchical_habitat_classification/InputLayers/Gulf_of_Guinea.shp")
