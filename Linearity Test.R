library(tidyverse)

#Uploading Picarro Table 1 and Organizing Variables
Picarro1<-read.table("C:/Users/Nehemiah/Documents/CarbonShed Lab/Data/Picarro0611_1753_1823.txt", header=TRUE)
view(Picarro1)
Time<-Picarro1$TIME
CO2<-Picarro1$X12CO2

#Separating Time and CO2 into
Time[1277:1376]

# Add in a field that tells you the row number
Picarro1r$rowNum <- rownames(Picarro1)
