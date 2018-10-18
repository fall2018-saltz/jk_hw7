
#making a new data frame that consists of state names, state centers and area
new_data=data.frame(stateName=state.name,stateCenter=state.center,stateArea=state.area,stringsAsFactors=FALSE)
data<-merge(data,new_data,by='stateName',all=TRUE)
