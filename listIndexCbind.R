#cbind list object index to list contents
listIndexCbind<-function(data,ret){
list1<-list()
  for(i in 1:length(data)){
    list1[[i]]<-cbind(data[[i]],ret[i])
  }
  list1
}
