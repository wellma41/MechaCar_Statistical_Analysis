### DELIVERABLE 1

#IMPORTING DPLYR
library(dplyr)

#importing MecahCar_mpg.csv
library(tidyverse)
mecha_mpg <- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

# Perform linear regression using the lm() function.

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=mecha_mpg)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=mecha_mpg))

###DELIVERABLE 2

mecha_sus <- read.csv(file='Suspension_Coil.csv',check.names = F, stringsAsFactors = F)