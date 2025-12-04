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
plot(x=malaria.dt$X..PCR..Positive,
     y=malaria.dt$X..Microscopy..Positive,
     xlab='Percentage Positive PCR',
     ylab= 'Percentage Positive Microscopy',
     col='blue',
     main='Percentage Positive PCR vs Microscopy',
     abline(a=0, b=1, lty=2,col='red'))
#where a= intercept, b= slope, lty=2 for dotted line

#Task2 - calculate the prevalence ratio (no. of positive microscopy cases by no. of positive PCR cases)
PrevalenceRatio <- malaria.dt$X..Microscopy..Positive / malaria.dt$X..PCR..Positive
#adding PrevlanceRatio to the dataset
colnames(malaria.dt)


