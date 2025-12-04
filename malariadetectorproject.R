#malariadetector
#loading the dataset into the work encironment
read.delim2('https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/R/lancet_malaria.txt')
#assigning the data table to ta variable 'malaria.dt'
malaria.dt <- read.delim2('https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/R/lancet_malaria.txt')
#undertsanding the dataset
View(malaria.dt)
str(malaria.dt)
summary(malaria.dt)


