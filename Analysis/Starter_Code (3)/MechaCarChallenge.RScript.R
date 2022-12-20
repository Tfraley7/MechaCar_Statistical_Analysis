library(tidyverse)
library(dplyr)
mpg <- read.csv("MechaCar_mpg.csv")
#Perform linear regression using the lm() function. In the lm() function,
#pass in all six variables (i.e., columns), and add the dataframe.
mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg)
#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(mpg_lm)
