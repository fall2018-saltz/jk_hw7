
#making a new data frame that consists of state names, state centers and area
new_data=data.frame(stateName=state.name,stateCenter=state.center,stateArea=state.area,stringsAsFactors=FALSE)
#merging the new_data dataframe with our previous dataframe
data<-merge(data,new_data,by='stateName',all=TRUE)
