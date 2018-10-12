
library(ggmap)
library(ggplot2)
library(maps)
usa <- map_data("usa")
# map <- map_data("usa")
# map<-get_map(location='united states', zoom=4, maptype = "terrain",source='osm')
viz=ggplot(data, aes(map_id = state)) +geom_map(aes(x=stateCenter.x,y=stateCenter.y,fill = stateArea), map = usa) +
    expand_limits(x = usa$long, y = usa$lat) 
# viz=ggplot(data)+geom_map(data=data,fill="white",color="black")+aes(x=data$stateCenter.x,y=data$stateCenter.y,color=data$stateArea)
