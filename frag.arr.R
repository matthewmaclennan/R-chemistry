frag.arr<-function(x){

	mzspec<-as.matrix(x)
#x is the resulting matrix from glycan.gen
	d<-data.frame(Parent=0,Fragment=0,Diff=0)
	for(i in 1:nrow(mzspec)){

		for(j in 1:nrow(mzspec)){

			if(mzspec[j,1]>=mzspec[i,1]) {is.null(j)} else 
			{d<-rbind(d,c(mzspec[i,1],mzspec[j,1],mzspec[i,1]-mzspec[j,1]))}
		}
	}

	d<-as.matrix(d[-1,])

}
