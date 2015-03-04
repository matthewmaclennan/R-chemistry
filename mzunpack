mzUnpack<-function(list,col_mz,col_int,scanfrom,scanto,scanby,roundto){

	list <- as.list(list)
	col_mz <- as.numeric(col_mz)
	col_int <- as.numeric(col_int)
	scanfrom <- as.numeric(scanfrom)
	scanto <- as.numeric(scanto)
	scanby <- as.numeric(scanby)
	roundto <- as.numeric(roundto)
	alpha <- as.matrix(seq(from=scanfrom,to=scanto,by=scanby))

	for (i in 1:length(list)){
		roundlist <- round(list[[i]],digits=roundto)
		new <- as.matrix(roundlist[match(alpha[,1],roundlist[,col_mz],nomatch=NA),col_int])
		alpha <- cbind(alpha,new)
	}
	alpha <- alpha

}
