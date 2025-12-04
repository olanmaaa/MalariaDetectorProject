#malariadetector
#loading the dataset into the work environment
read.delim2('https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/R/lancet_malaria.txt')
#assigning the data table to ta variable 'malaria.dt'
malaria.dt <- read.delim2('https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/R/lancet_malaria.txt')
#understanding the dataset
View(malaria.dt)
str(malaria.dt)
summary(malaria.dt)

#Task1 - visualize the PCR% against Microscopy% and add a 1:1 dotted line
plot(x=malaria.dt$X..Microscopy..Positive,
     y=malaria.dt$X..PCR..Positive,
     xlab='Percentage Positive Microscopy',
     ylab= 'Percentage Positive PCR',
     col='blue',
     main='Percentage Positive PCR vs Microscopy',
     abline(a=0, b=1, lty=2,col='red'))
#where a= intercept, b= slope, lty=2 for dotted line

#Task2 - calculate the prevalence ratio (no. of positive microscopy cases by no. of positive PCR cases)
PrevalenceRatio <- malaria.dt$X..Microscopy..Positive / malaria.dt$X..PCR..Positive
#PrevlanceRatio to the dataset
colnames(malaria.dt)
#adding PrevalenceRatio immediately after the percentage of positive Microscopy samples
malaria.dt <-cbind(malaria.dt[,1:13], PrevalenceRatio, malaria.dt[,14:21])

#Task 3 - create a split plot window detailing the PCR% against Microscopy% for the different regions captured in the dataset
par(mar = c(2, 2, 2, 1))  # Bottom, left, top, right (default is c(5.1,4.1,4.1,2.1))
# Your plots here
par(mfrow=c(2,2))
#plot 1 - Asia & Oceania
asia.data <- malaria.dt[malaria.dt$Global.Region == 'Asia&Oceania',]
plot(x= asia.data$X..Microscopy..Positive,
     y= asia.data$X..PCR..Positive,
     main='Asia and Oceania',
     xlab= 'Microscopy %',
     ylab= 'PCR%',
     col= 'blue',
     abline(0,1,lty=2, col='red'))
#plot 2 - South America
southamerica.data <- malaria.dt[malaria.dt$Global.Region == 'South America',]
plot(x= southamerica.data$X..Microscopy..Positive,
     y= southamerica.data$X..PCR..Positive,
     main='South America',
     xlab= 'Microscopy %',
     ylab= 'PCR%',
     col= 'blue',
     abline(0,1,lty=2, col='red'))
#plot 3 - East Africa
eastafrica.data <- malaria.dt[malaria.dt$Global.Region == 'East Africa',]
plot(x= eastafrica.data$X..Microscopy..Positive,
     y= eastafrica.data$X..PCR..Positive,
     main='East Africa',
     xlab= 'Microscopy %',
     ylab= 'PCR%',
     col= 'blue',
     abline(0,1,lty=2, col='red'))
#plot 4 - West Africa
westafrica.data <- malaria.dt[malaria.dt$Global.Region == 'West Africa',]
plot(x= westafrica.data$X..Microscopy..Positive,
     y= westafrica.data$X..PCR..Positive,
     main='West Africa',
     xlab= 'Microscopy %',
     ylab= 'PCR%',
     col= 'blue',
     abline(0,1,lty=2, col='red'))









