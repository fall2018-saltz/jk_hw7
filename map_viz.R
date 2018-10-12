
library(ggplot2)
library(ggmap)
library(maps)
data$stateName<-tolower(data$stateName)

us <- map_data("state")
#Step B: Generate a color coded map
viz <- ggplot(data, aes(map_id=stateName)) + geom_map(map=us, aes(fill=stateArea))+ expand_limits(x=us$long,y=us$lat) + coord_map() + ggtitle("US Map")
vizmurder <- ggplot(data, aes(map_id=stateName)) + geom_map(map=us, aes(fill=Murder))+ expand_limits(x=us$long,y=us$lat) + coord_map() + ggtitle("US Map Murder Rates")
vizpopulation<-viz+geom_point(aes(x=stateCenter.x,y=stateCenter.y,size=population))

nycx <- data[data$stateName=="new york","stateCenter.x"]
nycy <- data[data$stateName=="new york","stateCenter.y"]

viznyc <- ggplot(data, aes(map_id=stateName)) +
  geom_map(map=us, aes(fill=stateArea))+
  geom_point(aes(x=stateCenter.x,y=stateCenter.y,size=population))+
  expand_limits(x=us$long,y=us$lat) + 
  coord_map(xlim=c(nycx+10,nycx-10),ylim=c(nycy+10,nycy-10))+
  ggtitle("Us North Eastern Map Area with population")
