# Use country polygons from the maptools library
# For wrld_simpl polygons
library(maptools)

calculate_map <- function(table, dataframe_name, merge_by){
  data(wrld_simpl)
  countries = st_as_sf(wrld_simpl)
  
  # Join the attributes to the polygons
  countries = merge(countries, table, by = merge_by)
  
  # Convert the data column from text to numeric values
  #countries$Restaurants = suppressWarnings(as.double(countries$X2018))
  
  # Keep only needed columns
  countries = countries[,c("NAME", "ISO3", dataframe_name, "geometry")]
  
  # Use a projection suitable for the world
  robinson = "+proj=robin +lon_0=0 +x_0=0 +y_0=0 +datum=WGS84 +units=m +no_defs"
  
  countries = st_transform(countries, robinson)
  
  # Plot with a green color ramp
  return(countries[dataframe_name])
}
