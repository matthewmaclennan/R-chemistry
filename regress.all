regress.all<-function(MZ,RET,points,Rsqcutoff,Slopecutoff){

	MZ<-as.matrix(MZ)
	RET<-as.matrix(RET)
	points<-as.numeric(points)
	Rsqcutoff<-as.numeric(Rsqcutoff)
	Slopecutoff<-as.numeric(Slopecutoff)

	if(points==2){

	d<-matrix(c(0,0,0,0,0,0,0,0),ncol=8)
	
	for(i in 1:nrow(MZ)){
		for(j in 1:nrow(MZ)){
			if(j>i){
				LM1<-lm(c(MZ[j],MZ[i])~c(RET[j],RET[i]))
				RSQ<-summary(LM1)$r.squared
				if(as.character(RSQ)<=Rsqcutoff){is.null(j)} else {
				YINT<-summary(LM1)$coeff[1,1]
##########################################################################################
#The following COEFF_NA is a trick where an extra line of NA's is added to the regression#
#summary in order that vertical slope regression lines have an entry in the regression   #
#coefficints matrix. If there is a slope already present, the extra line of NA's does not#
#affect the indexing defined in SLOPE in the next line.					     #
##########################################################################################
				COEFF_NA<-rbind(summary(LM1)$coeff,c(NA,NA,NA,NA))
				SLOPE<-COEFF_NA[2,1]
				if(abs(SLOPE)<=Slopecutoff){is.null(j)} else {
				d<-rbind(d,c(MZ[i],RET[i],MZ[j],RET[j],SLOPE,summary(LM1)$coeff[1,1],summary(LM1)$r.squared,summary(LM1)$coeff[1,1]/SLOPE))
				}}
			} else {is.null(j)}
			
		d<-d
		}
	d<-d
	}

colnames(d)<-c("pt1","t1","pt2","t2","slope","y_int","rsq","x_int")
d<-d[-1,]
} else {

	d<-matrix(c(0,0,0,0,0,0,0,0,0,0),ncol=10)
	
	for(i in 1:nrow(MZ)){
		for(j in 1:nrow(MZ)){
			for(h in 1:nrow(MZ)){
				if(h>j && j>i){
					LM1<-lm(c(MZ[h],MZ[j],MZ[i])~c(RET[h],RET[j],RET[i]))
					RSQ<-summary(LM1)$r.squared
					if(as.character(RSQ)<=Rsqcutoff) {is.null(h)} else {
					YINT<-summary(LM1)$coeff[1,1]
##########################################################################################
#The following COEFF_NA is a trick where an extra line of NA's is added to the regression#
#summary in order that vertical slope regression lines have an entry in the regression   #
#coefficints matrix. If there is a slope already present, the extra line of NA's does not#
#affect the indexing defined in SLOPE in the next line.					     #
##########################################################################################		
					COEFF_NA<-rbind(summary(LM1)$coeff,c(NA,NA,NA,NA))
					SLOPE<-COEFF_NA[2,1]
					if(abs(SLOPE)<=Slopecutoff){is.null(h)} else {
					d<-rbind(d,c(MZ[i],RET[i],MZ[j],RET[j],MZ[h],RET[h],SLOPE,summary(LM1)$coeff[1,1],summary(LM1)$r.squared,summary(LM1)$coeff[1,1]/SLOPE))
					}}
				} else {is.null(h)}
			
			
			d<-d
			}
		d<-d
		}
	d<-d
	}
colnames(d)<-c("pt1","t1","pt2","t2","pt3","t3","slope","y_int","rsq","x_int")

}
d<-d[-1,]
}
#eoc
