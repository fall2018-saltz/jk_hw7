
#assigning USArrests dataframe to arrests variable
arrests<-USArrests 

#changing the rownames of data to it's column stateName for common merge element
rownames(data)<-as.vector(data[,'stateName'])

#merging data and arrests by row names
mergedData<-merge(data,arrests,by="row.names",all=TRUE)


