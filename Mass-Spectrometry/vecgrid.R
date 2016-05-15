#unfinalized script!
#This script uses the MW of precursor molecules to enumerate the origin of mass spectrometry peaks
#which have arisen based on reactions with precursor molecules. 
#
#
#
#
#
#describe a vector of parent molecules and possible reaction mechanisms (e.g., hydrolysis = -18)
vec8<-c( 0,  155,  115,   88,  -18,   18,    2 )
#Generate combinations
vecgrid8<-expand.grid(vec8,vec8,vec8,vec8,vec8,vec8,vec8)
#Generate rowsums
vecgrid8<-cbind(vecgrid8,apply(vecgrid8,1,sum))
#Pick out desired sum matrix
vec8.254<-vecgrid8[vecgrid8[,8]==254,]
#Find unique combinations for the sum
unique(t(apply(vec8.254,1,sort)))
