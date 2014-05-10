
setwd("/media/alex/principal/Dades portatil extern/Espai_Alex/Cursos/Data science specialization/Exploratory data science/course project 1/")
Sys.setlocale("LC_TIME", "en_US.UTF-8")

household_power_consumption <- read.table("household_power_consumption.txt", stringsAsFactors = FALSE, header=TRUE, sep=";", quote="\"")
household_power_consumption<-household_power_consumption[as.Date(household_power_consumption$Date,"%d/%m/%Y")=="2007-02-01"|as.Date(household_power_consumption$Date,"%d/%m/%Y")=="2007-02-02",]




household_power_consumption$temps<-paste(household_power_consumption$Date,household_power_consumption$Time)
household_power_consumption$temps<-strptime(household_power_consumption$temps,"%d/%m/%Y %H:%M:%S")


household_power_consumption$Global_active_power<-as.numeric(household_power_consumption$Global_active_power)
household_power_consumption$Global_reactive_power<-as.numeric(household_power_consumption$Global_reactive_power)
household_power_consumption$Voltage<-as.numeric(household_power_consumption$Voltage)
household_power_consumption$Global_intensity<-as.numeric(household_power_consumption$Global_intensity)
household_power_consumption$Sub_metering_1<-as.numeric(household_power_consumption$Sub_metering_1)
household_power_consumption$Sub_metering_2<-as.numeric(household_power_consumption$Sub_metering_2)
household_power_consumption$Sub_metering_3<-as.numeric(household_power_consumption$Sub_metering_3)

png(filename = "project 1/plot2.png", width = 480, height = 480)
        plot(household_power_consumption$temps,household_power_consumption$Global_active_power, type ="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()
