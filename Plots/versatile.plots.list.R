#Versatile.plots code where "data" is a list object
#
versatile.plot.list<-function(data,thresh,cex,xlim=NULL,ylim=NULL,xlab="",ylab="",colour){
  ifelse(colour=="topo",
    plot(unlist(lapply(data,function(x) x[x[,2]>thresh,1]))~unlist(lapply(data,function(x) x[x[,2]>thresh,3])),
    cex=cex,xlab=xlab,ylab=ylab,
    col=topo.colors(length(unlist(lapply(data,function(x) x[x[,2]>thresh,1])))[rank(unlist(lapply(data,function(x) x[x[,2]>thresh,1])))]),
    xlim=xlim, ylim=ylim),
    plot(unlist(lapply(data,function(x) x[x[,2]>thresh,1]))~unlist(lapply(data,function(x) x[x[,2]>thresh,3])),
    cex=cex,xlab=xlab,ylab=ylab,
    col=colour,
    xlim=xlim,
    ylim=ylim)
    )
}
