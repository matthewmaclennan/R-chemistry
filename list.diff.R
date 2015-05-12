list.diff
#Subtracts every value in one vector from every value in another vector.
#Creates a matrix with very many rows. There will be 5 columns in this matrix.
#VERY FAST!
#soc

list.diff<-function(list1,list2){
list1<-as.matrix(list1)
list2<-as.matrix(list2)
d<-matrix(c(0,0,0,0),ncol=4)
for(i in 1:nrow(list1)){

	Diff<-list1[i,]-list2
	Step<-cbind(list1[i,],i,list2,Diff)
	d<-rbind(d,Step)





}
d<-d[-1,]

}
#eoc
