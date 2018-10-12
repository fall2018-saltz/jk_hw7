
library(ggmap)
library(ggplot2)
library(maps)
usa <- map_data("usa")
viz=ggplot(data)+geom_map(data=data,fill="white",color="black")+aes(x=data$stateCenter.x,y=data$stateCenter.y,color=data$stateArea)
