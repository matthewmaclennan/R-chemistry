#Convert volume percentage of solvent to pH based on monoprotic acid dissociation and no organic solvent effects
percent2pH<-function(acidperc, acid_density,acid_molarmass,waterperc){
  acid_init_molarity<-acidperc*acid_density*acid_molarmass/waterperc
  ICEtable<-
}
