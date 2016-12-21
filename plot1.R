data<- read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors = FALSE,dec=".")
subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
Global_Active_Power<- as.numeric(subsetdata$Global_active_power)
png(filename = "plot1.png",width = 480, height = 480,units = "px")
hist(Global_Active_Power,col = "red",xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()

