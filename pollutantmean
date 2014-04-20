pollutantmean <- function(directory, pollutant, id=1:332){

dw<-c("C:/Users/Diego/Desktop/Coursera_Data_Science/Programming Assessment/Week2/") ##Set the directory
setwd(paste(dw,directory,sep="")) ##Set the folder
file<-list.files(pattern=".csv") ## List all the files

myvect<-numeric() ##Initialize a null vector

for (i in id){
  x<-read.csv(file[i],header=TRUE)[,pollutant] ##Read n csv file
	myvect<-append(myvect,x) ##Assign each column selected to a vector and append them
              }
means<-mean(myvect,na.rm=TRUE) ##calculate the mean for all files in id interval
means ##Return mean value
}
