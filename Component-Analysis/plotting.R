plot(mpzA11.fastICA8$K[,1],type="l",ylim=c(-2e-7,2e-7),xlab="Time (sec)",ylab="Total ion count")
points(mpzA11.fastICA8$K[,2],type="l",col="blue")
points(mpzA11.fastICA8$K[,3],type="l",col="red")
points(mpzA11.fastICA8$K[,4],type="l",col="green")
points(mpzA11.fastICA8$K[,5],type="l",col="orange")
points(mpzA11.fastICA8$K[,6],type="l",col="dark green")
points(mpzA11.fastICA8$K[,7],type="l",col="dark blue")
points(mpzA11.fastICA8$K[,8],type="l",col="violet")
title(main="ICA components in the time dimension of TIE
of derivatized naphthenic acids")

plot(mpzA11.fastICA4$K[,1],type="l",ylim=c(-7e-8,3e-8),xlab="Time (sec)",ylab="Total ion count")
points(mpzA11.fastICA4$K[,2],type="l",col="blue")
points(mpzA11.fastICA4$K[,3],type="l",col="red")
points(mpzA11.fastICA4$K[,4],type="l",col="green")
title(main="ICA components in the time dimension of TIE
of derivatized naphthenic acids")

#NNMF H matrix (time domain)
plot(mpzA11.nnmf8$H[1,],type="l",xlab="Time (sec)",ylab="Total ion count")
points(mpzA11.nnmf8$H[2,],type="l",col="blue")
points(mpzA11.nnmf8$H[3,],type="l",col="red")
points(mpzA11.nnmf8$H[4,],type="l",col="green")
points(mpzA11.nnmf8$H[5,],type="l",col="orange")
points(mpzA11.nnmf8$H[6,],type="l",col="dark green")
points(mpzA11.nnmf8$H[7,],type="l",col="dark blue")
points(mpzA11.nnmf8$H[8,],type="l",col="violet")
title(main="NNMF components in the time dimension of TIE
of derivatized naphthenic acids")

#NNMF W matrix m/z domain
