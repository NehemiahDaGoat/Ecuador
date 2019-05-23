setwd("~/Documents/Ecuador/")

# Import only the column names
colNames <- read.table("Vaisala_05172019_2019_05_20_11_48_05.dat",skip=1,nrow=1,sep = ',', header = TRUE)

# Import the data
vTable <- read.table("Vaisala_05172019_2019_05_20_11_48_05.dat",skip=4,sep = ',', header = FALSE)

# Assign the column names to the data
colnames(vTable) <- colnames(colNames)

#  Convert the Timestamp from Factor to POSIXct
vTable$TIMESTAMP <- as.POSIXct(vTable$TIMESTAMP)

# Simple Plot
plot <- ggplot(vTable)+
  geom_point(aes(x=TIMESTAMP, y = Vaisala1_Avg))
plot
