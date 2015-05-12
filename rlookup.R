rlookup<-function(look_for,col_a,look_in,col_b,range){
	look_for<-as.matrix(look_for)
	look_in<-as.matrix(look_in)
  
	d<-data.frame(Searched_for=0,Searched_row=0,Found=0,Found_row=0)

	for (i in 1:nrow(look_for)) {
		for (j in 1:nrow(look_in)) {
			ifelse (abs(look_for[,col_a][[i]] - look_in[,col_b][[j]])<=range,
			d<-rbind(d,c(look_for[,col_a][[i]],i,look_in[,col_b][[j]],j)),
            			is.null(j))
   
		}

	}
	d<-as.matrix(d)
	d<-rbind(d)
	print(d)

}
