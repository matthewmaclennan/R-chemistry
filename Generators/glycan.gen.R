glycan.gen<-function(Hex,HexNAc,Fuc,NeuAc,until){

	Hex <-as.numeric(Hex)
	HexNAc <- as.numeric(HexNAc)
	Fuc <- as.numeric(Fuc)
	NeuAc <- as.numeric(NeuAc)
	until <- as.numeric(until)

	d<-data.frame(Mass=0,Hex=0,HexNAc=0,Fuc=0,NeuAc=0)

	for(i in 0:NeuAc){
		for(j in 0:Fuc){
			for(k in 1:HexNAc){
				for(m in 1:Hex){
					a<-162*m+203*k+146*j+291*i
					if(a<until) d<-rbind(d,c(a,m,k,j,i))

				}
			}

		}

	}
	d<-as.matrix(d[-1,])

}
