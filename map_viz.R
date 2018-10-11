
library(ggmap)
library(ggplot2)

viz=ggmap(us)+ggplot(data)+aes(x=stateCenter.x,y=stateCenter.y,color=stateArea)
