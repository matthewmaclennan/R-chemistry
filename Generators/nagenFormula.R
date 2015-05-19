nagenFormula<-function(nagenresult,derivstr){
formula<-paste0("C",nagenresult[,"C"],"H",nagenresult[,"H"],"N",nagenresult[,"N"],"O",nagenresult[,"O"],"  Z=",nagenresult[,"Z-number"])
underivFormulaChain<-paste0(derivstr,"C",(nagenresult[,"C"]-9),"H",(nagenresult[,"H"]-19),"N",(nagenresult[,"N"]-3),"O",(nagenresult[,"O"]-2),"  Z=",(nagenresult[,"Z-number"]-(-4)))
matrix(c(formula,underivFormulaChain),ncol=2)
}
