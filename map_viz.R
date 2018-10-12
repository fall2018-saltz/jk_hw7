
library(ggplot2)
library(ggmap)
library(maps)
us <- map_data("state")
#Step B: Generate a color coded map
viz <- ggplot(data, aes(map_id=stateName)) +
           geom_map(map=us, aes(fill=data$stateArea))+
           expand_limits(x=us$long,y=us$lat) + 
           coord_map() + ggtitle("Us Map Area")
