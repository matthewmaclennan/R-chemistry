#Plot similar to versatile.plots.list, but with the additional feature of specifying which formulae are assumed
#formulaset is a subset of the matrix produced by nagenmz
formulaSetOnDataPlot<-function(data,formulaset,thresh,cex,xlim=NULL,ylim=NULL,xlab="",ylab="",colour){
  ifelse(colour=="topo",
    plot(unlist(lapply(data,function(x) x[x[,2]>thresh & x[,1][round(x[,1],0) %in% formulaset[,"m/z"]],1]))~unlist(lapply(data,function(x) x[x[,2]>thresh & x[,1][round(x[,1],0) %in% formulaset[,"m/z"]],3])),
    cex=cex,xlab=xlab,ylab=ylab,
    col=topo.colors(length(unlist(lapply(data,function(x) x[x[,2]>thresh,2]))))[rank(unlist(lapply(data,function(x) x[x[,2]>thresh,2])))],
    xlim=xlim, ylim=ylim),
    plot(unlist(lapply(data,function(x) x[x[,2]>thresh & x[,1][round(x[,1],0) %in% formulaset[,"m/z"]],1]))~unlist(lapply(data,function(x) x[x[,2]>thresh & x[,1][round(x[,1],0) %in% formulaset[,"m/z"]],3])),
    cex=cex,xlab=xlab,ylab=ylab,
    col=colour,
    xlim=xlim,
    ylim=ylim)
    )
}
