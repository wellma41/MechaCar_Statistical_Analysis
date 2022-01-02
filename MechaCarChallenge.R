##DELIVERABLE 1

#IMPORTING DPLYR
library(dplyr)

#importing MecahCar_mpg.csv
library(tidyverse)
mechacar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

# Perform linear regression using the lm() function.

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=mechacar_mpg)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=mechacar_mpg))

##DELIVERABLE 2

#importing suspension_coil
mechacar_sus <- read.csv(file='Suspension_Coil.csv',check.names = F, stringsAsFactors = F)

# Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.

total_summary <- mechacar_sus %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Var_PSI=var(PSI),Std_Dev_PSI=sd(PSI),Num_Coil=n(), .groups = 'keep')

# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column.

lot_summary <- mechacar_sus %>% group_by(Manufacturing_Lot)%>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Var_PSI=var(PSI),Std_Dev_PSI=sd(PSI),Num_Coil=n(), .groups = 'keep')

##DELIVERABLE 3

#In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

#t.test(log10(mechacar_sus$PSI),mu=1500)
t.test(mechacar_sus$PSI,mu=1500)

#t.test for each lot

lot1 <- subset(mechacar_sus, Manufacturing_Lot=="Lot1")
lot2 <- subset(mechacar_sus, Manufacturing_Lot=="Lot2")
lot3 <- subset(mechacar_sus, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)

