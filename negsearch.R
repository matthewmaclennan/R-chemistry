negsearch<-function(x,d){

	x<-as.matrix(x)
	d<-as.data.frame(d)

	for(i in 1:nrow(x)){

		for(j in 1:ncol(x)){

			if(x[i,j]<0) is.null(i)
		}

		d<-rbind(d,x[i,])

	}
	d<-as.matrix(d)
	print(d)
}
