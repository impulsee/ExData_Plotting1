## This file contains function to create generic x-y plot  Global Active Power over DateTime
source("Utilities.R")
plot2 <- function(filename = "plot2.png"){
  mydata<-getCachedData()
  png(filename,width = 480, height = 480)
  with(mydata, {
    plot(dateTime, Global_active_power, type='l', xlab='', ylab='Global Active Power (kilowatts)')
  })
  dev.off()
  
}
## Run plot2() function just by calling source("plot2.R")
plot2()

