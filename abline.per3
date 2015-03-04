#Pick any three points from a cluster of points in a plotted dataset and plot a linear regression
#line, including the statistical parameters of the regression line. 

abline.per3<-function(x,p1,p2,p3){
#x is the data matrix of m/z and retention time data
	x<-as.matrix(x)
	p1<-as.numeric(p1)
	p2<-as.numeric(p2)
	p3<-as.numeric(p3)

	Which_p1<-x[which(x[,1]==p1),]
	Which_p2<-x[which(x[,1]==p2),]
	Which_p3<-x[which(x[,1]==p3),]
	
	rbound<-rbind(Which_p1,Which_p2,Which_p3)

	abline(lm(rbound[,1]~rbound[,2]))
	LM<-lm(rbound[,1]~rbound[,2])
}
