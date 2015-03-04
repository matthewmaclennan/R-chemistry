abline.batch

abline.batch<-function(data,slope_col,y_int_col){
data<-as.matrix(data)


	for(i in 1:nrow(data)){
		abline(coef=c(data[i,y_int_col],data[i,slope_col]))
	}
}
