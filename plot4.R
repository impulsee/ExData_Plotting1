## This file contains function to create 4 generic x-y plots:
## 1. Global_active_power over dateTime
## 2. Voltage over dateTime
## 3. 3 sub_meterings over dateTime
## 4. Globa reactive power over dateTime 
source("Utilities.R")
plot4 <- function(filename = "plot4.png"){
  mydata<-getCachedData()
  png(filename,width = 480, height = 480)
  par(mfrow=c(2,2))
  
  
  with(mydata, {
    plot(dateTime, Global_active_power, type='l', xlab='', ylab='Global Active Power (kilowatts)')
  })
  
  with(mydata, {
    plot(dateTime, Voltage, xlab='datetime', type='l')
  })
  
  with(mydata, plot(dateTime,Sub_metering_1, type = "l", ylab = "Energy sub metering",xlab=""))
  lines(mydata$dateTime,mydata$Sub_metering_2,type = "l", col = "red")
  lines(mydata$dateTime,mydata$Sub_metering_3,type = "l",col = "blue")
  legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd=1,col=c('black', 'red', 'blue'))
  
  with(mydata, {
    plot(dateTime, Global_reactive_power, xlab='datetime', type='l')
  })
  
  dev.off()
  
}

plot4()

