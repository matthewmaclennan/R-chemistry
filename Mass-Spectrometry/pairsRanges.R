pairsRanges<-function(matrix,thresh){
#pairs is the migration time-m/z pairs two-column matrix. The vector supairs is the sorted unique 
  pairs<-cbind(matrix[which(matrix>thresh,arr.in=T)[,1],2],matrix[1,which(matrix>thresh,arr.in=T)[,2]])
  supairs<-sort(unique(pairs[,1]))
  pairsranges<-c(0,0,0)

  for(i in 1:length(supairs)){
    rangevec<-c(supairs[i],range(pairs[pairs[,1]==supairs[i],2]))
    pairsranges<-rbind(pairsranges,rangevec)
  }
  pairsranges<-pairsranges[-1,]
#pairsranges is the 
  pairsranges<-cbind(pairsranges,pairsranges[,3]-pairsranges[,2])
  list<-list(pairsranges,pairs)
}
