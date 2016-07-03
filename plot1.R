plot1<-function(){
setwd("C:/Users/Gupta/Desktop/Coursera")
data.set<-read.table("hpc.txt",sep=";",header = TRUE)
data.set$Date<-as.Date(data.set$Date,format="%d/%m/%Y")
data.set<-subset(data.set, data.set$Date>=as.Date("2007-02-01") & data.set$Date<=as.Date("2007-02-02"))
data.set$Global_active_power<-as.numeric(as.character(data.set$Global_active_power))

png('plot1.png',width = 480, height = 480, units = "px")
hist(data.set$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
}



# rr<-strptime(paste(data.set$Date,data.set$Time), format ="%Y-%m-%d %H:%M:%S")