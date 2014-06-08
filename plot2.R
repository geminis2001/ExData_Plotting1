plot2<-function(){
  data<-read.table("household_power_consumption.txt",sep=";",header=TRUE,colClasses="character")
  data2<-data[data$Date=="1/2/2007" | data$Date=="2/2/2007" ,]
  ##My computer is in spanish. Thu(rsday)=jue(ves) Fri(day)=vie(rnes) Saturday=sáb(ado)
  png(filename="plot2.png",width = 480, height = 480)
  with(data2,plot(strptime(paste(Date," ",Time),"%d/%m/%Y %H:%M:%S"),as.numeric(Global_active_power),type="l",xlab="",ylab="Global Active Power (Kilowatts)"))
  dev.off()
  
}