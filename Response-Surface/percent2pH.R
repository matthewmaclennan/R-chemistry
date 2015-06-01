#Convert volume percentage of solvent to pH based on monoprotic acid dissociation and no organic solvent effects
percent2pH<-function(acidperc, acid_density,acid_molarmass, acidKa,waterperc){
  acid_init_molarity<-acidperc*acid_density*acid_molarmass/waterperc
  ICEtable<-matrix(c(acid_init_molarity*acidKa,-acidKa,-1),ncol=1)
  roots<-polyroot(ICEtable)
  final<-as.numeric(roots)
  print(roots)
  print(final)
  final
}
