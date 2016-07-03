plot2<-function(){
  setwd("C:/Users/Gupta/Desktop/Coursera")
  data.set<-read.table("hpc.txt",sep=";",header = TRUE)
  data.set$Date<-as.Date(data.set$Date,format="%d/%m/%Y")
  data.set<-subset(data.set, data.set$Date>=as.Date("2007-02-01") & data.set$Date<=as.Date("2007-02-02"))
  data.set$Global_active_power<-as.numeric(as.character(data.set$Global_active_power))
  
  png('plot2.png',width = 480, height = 480, units = "px")
  dt<-strptime(paste(data.set$Date,data.set$Time), format ="%Y-%m-%d %H:%M:%S")
  plot(dt,data.set$Global_active_power,type="l", ylab="Global Active Power (kilowatts)", main = "", xlab="")
  dev.off()
}



