plot4<-function(){
  data<-read.table("household_power_consumption.txt",sep=";",header=TRUE,colClasses="character")
  data2<-data[data$Date=="1/2/2007" | data$Date=="2/2/2007" ,]
  ##My computer is in spanish. Thu(rsday)=jue(ves) Fri(day)=vie(rnes) Saturday=sáb(ado)
  png(filename="plot4.png",width = 480, height = 480)
  par("ps"=10)
  par(mfrow=c(2,2))
  ##plot1
  with(data2,plot(strptime(paste(Date," ",Time),"%d/%m/%Y %H:%M:%S"),as.numeric(Global_active_power),type="l",xlab="",ylab="Global Active Power"))
  ##plot2
  with(data2,plot(strptime(paste(Date," ",Time),"%d/%m/%Y %H:%M:%S"),as.numeric(Voltage),type="l",xlab="datetime",ylab="Voltage"))
  ##plot3
  with(data2,plot(strptime(paste(Date," ",Time),"%d/%m/%Y %H:%M:%S"),as.numeric(Sub_metering_1),type="n",xlab="",ylab="Energy Sub metering"))
  with(data2,points(strptime(paste(Date," ",Time),"%d/%m/%Y %H:%M:%S"),as.numeric(Sub_metering_1),type="l",col="black"))
  with(data2,points(strptime(paste(Date," ",Time),"%d/%m/%Y %H:%M:%S"),as.numeric(Sub_metering_2),type="l",col="red"))
  with(data2,points(strptime(paste(Date," ",Time),"%d/%m/%Y %H:%M:%S"),as.numeric(Sub_metering_3),type="l",col="blue"))
  legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=1, lty=c(1,1,1), merge=FALSE )
  ##plot4
  with(data2,plot(strptime(paste(Date," ",Time),"%d/%m/%Y %H:%M:%S"),as.numeric(Global_reactive_power),type="l",xlab="datetime",ylab="Global Reactive Power"))
  dev.off()
  
}