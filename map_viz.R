
library(ggmap)
library(ggplot2)
library(maps)
usa <- map_data("usa")
viz=ggplot(data)+geom_polygon(data=usa,fill="white",color="black")+aes(x=stateCenter.x,y=stateCenter.y,color=stateArea)
