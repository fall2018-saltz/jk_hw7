
library(ggmap)
library(ggplot2)
viz=ggplot(data)+geom_map(map=us,fill="white",color="black")+aes(x=stateCenter.x,y=stateCenter.y,color=stateArea)
