nagenFormula<-function(nagenresult,loss,derivstr){
formula<-paste0("C",nagenresult[,"C"],"H",nagenresult[,"H"],"N",nagenresult[,"N"],"O",nagenresult[,"O"],"  Z=",nagenresult[,"Z-number"])
nagenLoss<-t(apply(nagenresult,1,function(x) x-loss))
underivFormulaChain<-paste0("C",nagenLoss[,"C"],"H",nagenLoss[,"H"],"N",nagenLoss[,"N"],"O",nagenLoss[,"O"],"  Z=",nagenLoss[,"Z-number"])
Rchain<-paste0("C",nagenLoss[,"C"],"H",nagenLoss[,"H"],"  Z=",nagenLoss[,"Z-number"])
matrix(c(formula,underivFormulaChain,Rchain),ncol=3)
}
#References for calculating the NA hydrocarbon chain formulae
#Loss of EDC and amide C(=O) c(0,-4,9,19,2,3,0,0,0)
#Loss of EDC neutral fragment 71 (remove the diamine left) c(0,-2,6,14,1,2,0,0,0)
#Loss of EDC neutral fragment 71 and neutral fragment 45 (remove oxazinium left)  c(0,-4,4,6,1,1,0,0,0)
#Loss of N,N-DMEDA and amide C(=O) c(0,0,5,12,1,2,0,0,0)
