#Versatile.plots code where "data" is a list object
#
versatile.plot.list<-function(data,data.window,thresh,ret,cex,xlim=NULL,ylim=NULL,xlab="",ylab="",colour){
  ifelse(colour=="topo",
    plot(lapply(data,function(x) x[x[,2]>thresh,])~ret[which(data.window>thresh,arr.in=T)[,2]],
    cex=cex,xlab=xlab,ylab=ylab,
    col=topo.colors(length(data[which(data.window>thresh,arr.in=T)]))[rank(data[which(data.window>thresh,arr.in=T)])],
    xlim=xlim, ylim=ylim),
    plot(data[which(data.window>thresh,arr.in=T)[,1]]~ret[which(data.window>thresh,arr.in=T)[,2]],
    cex=cex,xlab=xlab,ylab=ylab,
    col=colour,
    xlim=xlim,
    ylim=ylim)
    )
}
