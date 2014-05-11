plot2=function(){
  setwd("C:/Users/David/Dropbox/Coursea/Exploratory Data Analysis")
  #read data set as data table, sep by ;, missing values are coded as ?, header is included
  DT=fread("household_power_consumption.txt",sep=";",header=T,
           na.strings="?")
  DT=DT[DT$Date=="1/2/2007"|DT$Date=="2/2/2007",]
  #combine date time variable as one string
  stringDateTime=paste(DT$Date,DT$Time)
  #create POSIXlt variable from stringDateTime 
  x=strptime(stringDateTime,"%d/%m/%Y %H:%M:%S")
  #generate plot2
  png("Plot2.png",width=480,height=480)
  plot(x,as.numeric(DT$Global_active_power),
       type="l",
       xlab="",
       ylab="Global Active power (kilowatts)")
  dev.off()
}
