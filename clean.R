
dfStates <- raw_data
cleanDataFrame<- function(){
  
  #removing the first row and last row which has the data for entire United States and Puerto Rico respectively.
  # for getting the index of last row, nrow is used
  dfStates<-dfStates[-c(1,nrow(dfStates)),]
  
  #removing the first four columns from the dataframe as they are not needed and assigning it to dfStates variable
  dfStates<-dfStates[,-c(1:4)]
  
  #renaming the column labels/names as per our need
  colnames(dfStates)<-c('stateName','population','popOver18','percentOver18')
  
  #returning the dataframe as output
  return(dfStates)
}

dfStates<-cleanDataFrame()
clean_data<-dfStates
