#EDC-NA losses of 71, then 116. Also, loss of whole EDC is at the bottom.
plot(naC30O2N3Z32[which(naC30O2N3Z32[,"Z-number"]<=(-4) & naC30O2N3Z32[,"C"]>=9 & naC30O2N3Z32[,"N"]==3 & naC30O2N3Z32[,"Charge"]==1 & naC30O2N3Z32[,"O"]==2),"m/z"],cex=1,col="red",pch=2,ylim=c(50,500),xlim=c(0,300))
points(naC30O2N3Z32[which(naC30O2N3Z32[,"Z-number"]<=(-2) & naC30O2N3Z32[,"C"]>=6 & naC30O2N3Z32[,"N"]==2 & naC30O2N3Z32[,"Charge"]==1 & naC30O2N3Z32[,"O"]==1),"m/z"]-71,cex=1,col="blue",pch=3)
points(naC30O2N3Z32[which(naC30O2N3Z32[,"Z-number"]<=(-2) & naC30O2N3Z32[,"C"]>=4 & naC30O2N3Z32[,"N"]==1 & naC30O2N3Z32[,"Charge"]==1 & naC30O2N3Z32[,"O"]==1),"m/z"]-116,cex=1,col="dark green",pch=4)
points(naC30O2N3Z32[which(naC30O2N3Z32[,"Z-number"]<=(-2) & naC30O2N3Z32[,"C"]>=1 & naC30O2N3Z32[,"N"]==1 & naC30O2N3Z32[,"Charge"]==1 & naC30O2N3Z32[,"O"]==1),"m/z"]-173,cex=1,col="orange",pch=5)
