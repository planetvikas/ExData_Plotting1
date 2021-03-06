plot4<-function(){
  setwd("C:/Users/Gupta/Desktop/Coursera")
  data.set<-read.table("hpc.txt",sep=";",header = TRUE)
  data.set$Date<-as.Date(data.set$Date,format="%d/%m/%Y")
  data.set<-subset(data.set, data.set$Date>=as.Date("2007-02-01") & data.set$Date<=as.Date("2007-02-02"))
  data.set$Global_active_power<-as.numeric(as.character(data.set$Global_active_power))
  png('plot4.png',width = 480, height = 480, units = "px")
  par(mfrow=c(2,2))
  dt<-strptime(paste(data.set$Date,data.set$Time), format ="%Y-%m-%d %H:%M:%S")
  
  data.set$Sub_metering_1<-as.numeric(data.set$Sub_metering_1)
  data.set$Sub_metering_2<-as.numeric(data.set$Sub_metering_2)
  data.set$Sub_metering_3<-as.numeric(data.set$Sub_metering_3)
  plot(dt,data.set$Global_active_power, col="red", ylab="Global Active Power", type="l", xlab="")
  plot(dt,data.set$Voltage, col="red", ylab="Voltage", type="l", xlab="datetime")
    plot(dt,data.set$Sub_metering_1,type="l",xlab="",ylim=c(0,40), ylab="Energy sub metering")
  lines(dt,data.set$Sub_metering_2,type="l",col="red")
  lines(dt,data.set$Sub_metering_3,type="l",col="blue")
  legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1,1), col=c("black","red","blue"))
  plot(dt,data.set$Global_reactive_power, col="red", ylab="Global_reactive_Power", type="l", xlab="datetime")
  
  dev.off()
}