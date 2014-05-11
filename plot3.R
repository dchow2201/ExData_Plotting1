plot3=function(){
  setwd("C:/Users/David/Dropbox/Coursea/Exploratory Data Analysis")
  #read data set as data table, sep by ;, missing values are coded as ?, header is included
  DT=fread("household_power_consumption.txt",sep=";",header=T,
           na.strings="?")
  DT=DT[DT$Date=="1/2/2007"|DT$Date=="2/2/2007",]
  #combine date time variable as one string
  stringDateTime=paste(DT$Date,DT$Time)
  #create POSIXlt variable from stringDateTime 
  x=strptime(stringDateTime,"%d/%m/%Y %H:%M:%S")
  #generate plot3
  png("Plot3.png",width=480,height=480)
  plot(x,as.numeric(DT$Sub_metering_1),
       type="l", col="black",
       xlab="",
       ylab="Energy sub metering")
  points(x,as.numeric(DT$Sub_metering_2),
         type="l", col="red")
  points(x,as.numeric(DT$Sub_metering_3),
         type="l", col="blue")
  legend("topright",col=c("black","red","blue"),
         lty=1,
         legend=c("Sub_metering_1","Sub_metering_2",
                  "Sub_metering_3"))
  
  dev.off()
}
