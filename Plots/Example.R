#Example plot
versatile.plot(as.matrix(Ampz[1400:2200,c(2,450:580)]),ampz[1400:2200,450:580],
ret=as.matrix(Ampz[1,453:583]),thresh=1e5,cex=0.5,colour="topo",xlab="Migration Time (sec)",ylab="m/z",pch=18)
#Main title of the plot
title(main="CE-(+ESI)-MS of amine-derivatized naphthenic acids in DMSO
(Zoomed In)")
#
