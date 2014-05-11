plot1=function(){
  setwd("C:/Users/David/Dropbox/Coursea/Exploratory Data Analysis")
  #read data set as data table, sep by ;, missing values are coded as ?, header is included
  DT=fread("household_power_consumption.txt",sep=";",header=T,
           na.strings="?")
  DT=DT[DT$Date=="1/2/2007"|DT$Date=="2/2/2007",]
  #create histogram
  png("Plot1.png",width=480,height=480)
  hist(as.numeric(DT$Global_active_power),
       main= "Global Active Power",
       xlab="Global Active power (kilowatts)",
       col="red")
  dev.off()
}
