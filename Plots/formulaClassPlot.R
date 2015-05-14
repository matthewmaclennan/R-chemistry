#EDC-NA losses of 71, then 116. Also, loss of whole EDC is at the bottom.
#Insert other bounds into the input matrix "namatrix".
naEDClossPlot<-function(namatrix){
plot(namatrix[which(namatrix[,"Z-number"]<=(-4) & namatrix[,"C"]>=9 & namatrix[,"N"]==3 & namatrix[,"Charge"]==1 & namatrix[,"O"]==2),"m/z"],cex=1,col="red",pch=2,ylim=c(50,500),xlim=c(0,300))
points(namatrix[which(namatrix[,"Z-number"]<=(-2) & namatrix[,"C"]>=6 & namatrix[,"N"]==2 & namatrix[,"Charge"]==1 & namatrix[,"O"]==1),"m/z"]-71,cex=1,col="blue",pch=3)
points(namatrix[which(namatrix[,"Z-number"]<=(-2) & namatrix[,"C"]>=4 & namatrix[,"N"]==1 & namatrix[,"Charge"]==1 & namatrix[,"O"]==1),"m/z"]-116,cex=1,col="dark green",pch=4)
points(namatrix[which(namatrix[,"Z-number"]<=(-2) & namatrix[,"C"]>=1 & namatrix[,"N"]==1 & namatrix[,"Charge"]==1 & namatrix[,"O"]==1),"m/z"]-173,cex=1,col="orange",pch=5)
}
