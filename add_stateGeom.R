
new_data=data.frame(stateName=state.name,stateCenter=state.center,stateArea=state.area,stringsAsFactors=FALSE)
data<-merge(data,new_data,by=stateName,all=TRUE)
data
