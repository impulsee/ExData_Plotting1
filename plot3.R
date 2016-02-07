## This file contains function to create generic x-y plot all sub_meterings over DateTime
source("Utilities.R")
plot3 <- function(filename = "plot3.png"){
  mydata<-getCachedData()
  png(filename)
  
  with(mydata, plot(dateTime,Sub_metering_1, type = "l", ylab = "Energy sub metering",xlab=""))
  lines(mydata$dateTime,mydata$Sub_metering_2,type = "l", col = "red")
  lines(mydata$dateTime,mydata$Sub_metering_3,type = "l",col = "blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1,col=c("black", "red", "blue"))
  dev.off()
  
}
## Run plot3() function just by calling source("plot3.R")
plot3()
