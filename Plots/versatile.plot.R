#soc
#The structure of this code is to plot points in a matrix according to a chosen (linear) threshhold
#The points are coloured according to the data input 
#The viewing window can be adjusted (data.window)
#
#
versatile.plot<-function(data,data.window,thresh,ret,cex,xlim=NULL,ylim=NULL,xlab="",ylab="",colour,pch=""){
  ifelse(colour=="topo",
    plot(data[which(data.window>thresh,arr.in=T)[,1]]~ret[which(data.window>thresh,arr.in=T)[,2]],
    cex=cex,xlab=xlab,ylab=ylab,pch=pch,
    col=topo.colors(length(data[which(data.window>thresh,arr.in=T)]))[rank(data[which(data.window>thresh,arr.in=T)])],
    xlim=xlim, ylim=ylim),
    plot(data[which(data.window>thresh,arr.in=T)[,1]]~ret[which(data.window>thresh,arr.in=T)[,2]],
    cex=cex,xlab=xlab,ylab=ylab,
    col=colour,pch=pch,
    xlim=xlim,
    ylim=ylim)
    )
  t<-topo.colors(length(data[which(data.window>thresh,arr.in=T)]))[rank(data[which(data.window>thresh,arr.in=T)])]
}
#eoc
