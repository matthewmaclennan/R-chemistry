#Here is the script for performing polynomial regression on the data for 5 factors.
#The data (not listed here) are:
###pwidth, swathz, migz, current, and atime.
#Convert matrix into appropriate format for lm() function
pwidthlm<-cbind(c(0,10,30,50,70),c(rep(0.5,5),rep(2,5),rep(3.5,5)),c(pwidth))
swathzlm<-cbind(c(0,10,30,50,70),c(rep(0.5,5),rep(2,5),rep(3.5,5)),c(swathz))
migzlm<-cbind(c(0,10,30,50,70),c(rep(0.5,5),rep(2,5),rep(3.5,5)),c(migz))
currentzlm<-cbind(c(0,10,30,50,70),c(rep(0.5,5),rep(2,5),rep(3.5,5)),c(currentz))
atimelm<-cbind(c(0,10,30,50,70),c(rep(0.5,5),rep(2,5),rep(3.5,5)),c(atime))
#Perform polynomial regression(s) on these
