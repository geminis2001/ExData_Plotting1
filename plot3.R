plot3<-function(){
  data<-read.table("household_power_consumption.txt",sep=";",header=TRUE,colClasses="character")
  data2<-data[data$Date=="1/2/2007" | data$Date=="2/2/2007" ,]
  ##My computer is in spanish. Thu(rsday)=jue(ves) Fri(day)=vie(rnes) Saturday=sáb(ado)
  png(filename="plot3.png",width = 480, height = 480)
  with(data2,plot(strptime(paste(Date," ",Time),"%d/%m/%Y %H:%M:%S"),as.numeric(Sub_metering_1),type="n",xlab="",ylab="Energy Sub metering"))
  with(data2,points(strptime(paste(Date," ",Time),"%d/%m/%Y %H:%M:%S"),as.numeric(Sub_metering_1),type="l",col="black"))
  with(data2,points(strptime(paste(Date," ",Time),"%d/%m/%Y %H:%M:%S"),as.numeric(Sub_metering_2),type="l",col="red"))
  with(data2,points(strptime(paste(Date," ",Time),"%d/%m/%Y %H:%M:%S"),as.numeric(Sub_metering_3),type="l",col="blue"))
  legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=1, lty=c(1,1,1), merge=FALSE )
  dev.off()
  
}