library(tidyverse)
#getwd(C:/Users/Nehemiah/Desktop)
#getwd(C:\Users\Nehemiah\Desktop)

# Set the working directory
setwd("C:/Users/Nehemiah/Documents/CarbonShed Lab/Data")

# Rename the Data
MMPast <-read.csv("C:/Users/Nehemiah/Documents/CarbonShed Lab/Data/Flow Data 6_4_19 - Marsh-McBernie Past-Injection Point")
MMPast <-read.csv("Flow Data 6_4_19 - Marsh-McBernie Past-Injection Point.csv")

# Separate and Name Columns for Area and Velocity
Area<-MMPast$Area..cm.2.
Velocity<-MMPast$Velocity..cm.s.
view(Area)

#Perform Trapezoidal Integration on Area and Velocity
install.packages("pracma")
library("pracma")
trp<-trapz(Area[1:8],Velocity[1:8])
trp
