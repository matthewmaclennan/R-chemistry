#Special plotting
versatile.plot.match<-function(data,mzvec,thresh,cex,col,ylim=NULL,xlim=NULL,xlab="",ylab=""){
  plot(data[which(data[data[,2] %in% mzvec,]>thresh,arr.in=T)[,1]]~data[1,][which(data[data[,2] %in% mzvec,]>thresh,arr.in=T)[,2]],cex=cex,col=col,xlim=xlim,ylim=ylim,xlab=xlab,ylab=ylab)
}
#Special plotting
versatile.points.match<-function(data,mzvec,thresh,cex,col,ylim=NULL,xlim=NULL,xlab="",ylab=""){
  points(data[which(data[data[,2] %in% mzvec,]>thresh,arr.in=T)[,1]]~data[1,][which(data[data[,2] %in% mzvec,]>thresh,arr.in=T)[,2]],cex=cex,col=col,xlim=xlim,ylim=ylim,xlab=xlab,ylab=ylab)
}
#Example
versatile.plot.match(mpzA11,naEDC[naEDC[,"Z-number"]<=(-4) & naEDC[,"Z-number"]>=(-14) & naEDC[,"O"]==2 & naEDC[,"N"]==3,"m/z"],col="red",cex=0.2,thresh=5e5)
