#Convert data to a list of colours where the colours are associated with each data point according to the value of the data point.
#Useful for plotting data in 2-D and using colour to represent the third dimension.
#rampPalette argument is a palette created by the function colorRampPalette()
data2colours<-function(data,data.window,thresh,rampPalette){
#The length and rank indices apply a colour from rampPalette to each data point. These colours are in the order of the 
#associated data points and not in ramped order. This means that image.plot() in the package fields would display the colour bar
#as assorted colours, not in a smooth gradient.
rampPalette(length(data[which(data.window>thresh,arr.in=T)]))[rank(data[which(data.window>thresh,arr.in=T)])]

}
