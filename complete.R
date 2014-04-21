complete <- function(directory, id=1:332){

dw<-c("C:/Users/Diego/Desktop/Coursera_Data_Science/Programming Assessment/Week2/") ##Set the directory
setwd(paste(dw,directory,sep="")) ##Set the folder
file<-list.files(pattern=".csv") ## List all the files

table<-data.frame()##Initializing a null vector
h<-id

for (i in 1:length(h)){
	x<-read.csv(file[h[i]]) ##read files indexed
	y<-c(h[i],length(which(!is.na(x[,"nitrate"]*x[,"sulfate"])))) ##identify number and assign to a vector y
	table<-as.data.frame(rbind(table,y)) ##create a table
		}
colnames(table)<-c("id","nobs") ##data frame column names
table
}
