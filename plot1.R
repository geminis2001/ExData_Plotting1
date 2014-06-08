plot1<-function(){
  data<-read.table("household_power_consumption.txt",sep=";",header=TRUE,colClasses="character")
  data2<-data[data$Date=="1/2/2007" | data$Date=="2/2/2007" ,]
  png(filename="plot1.png",width = 480, height = 480)
  hist(as.numeric(data2$Global_active_power),xlab="Global Active Power (Kilowatts)",col="red",main="Global Active Power")
  dev.off()
  
}