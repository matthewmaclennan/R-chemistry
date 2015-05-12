##divides every member of one vector by every member of another vector. Based on matrix, not on
#data frame.
#No restrictions
#Creates a large matrix of 5 columns
#soc

vector.div<-function(vector1,vector2){
	vector1<-as.matrix(vector1)
	vector2<-as.matrix(vector2)
	d<-matrix(c(0,0,0,0,0),ncol=5)
	for(i in 1:nrow(vector1)){

		for(j in 1:nrow(vector2)){

			Quotient<-vector1[i,]/vector2[j,]
			d<-rbind(d,c(vector1[i,],i,vector2[j,],j,Quotient))


		}


	}
	colnames(d)<-c("Value_1","V1_Row","Value_2","V2_Row","Quotient_V1/V2")
	d<-d[-1,]
}
#eoc
