## This file contains function to create Histogram of Global Active Power

source("Utilities.R")
plot1 <- function(filename = "plot1.png"){
  mydata<-getCachedData()
  png(filename,width = 480, height = 480,)
  hist(mydata$Global_active_power, main="Global Active Power",xlab="Global Active Power (kilowatts)", col='red')
  dev.off()
  
}
## Run plot1() function just by calling source("plot1.R")
plot1()
