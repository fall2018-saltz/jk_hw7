
library(ggmap)
library(ggplot2)
usmap<-get_map("us",source=c("osm"))
viz=ggmap(usmap)+ggplot(data)+aes(x=stateCenter.x,y=stateCenter.y,color=stateArea)
