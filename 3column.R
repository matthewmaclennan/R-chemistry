#Handling RT_m/z lists generated by the mzR package
list1<-list()
for(i in 1:length(edcC2.p)){
list1[[i]]<-cbind(edcC2.p[[i]],edcC2.h$ret[i])
}
#Now apply preferred cutoff on data and convert to matrix
require(plyr)
as.matrix(ldply(lapply(list1[c(400:800)],function(x) x[x[,2]>6e4,]),as.data.frame))
#This creates a 3 column matrix from the data "m/z","intensity", "retention time"
