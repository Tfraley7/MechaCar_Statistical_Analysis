library(tidyverse)
library(dplyr)
mpg <- read.csv("MechaCar_mpg.csv")
#Perform linear regression using the lm() function. In the lm() function,
#pass in all six variables (i.e., columns), and add the dataframe.
mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg)
#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(mpg_lm)
#Import and read in the Suspension_Coil.csv file as a dataframe
suspension <- read.csv("Suspension_Coil.csv")
suspension_table <- read.csv(file = paste0(getwd(), "/Suspension_Coil.csv"))
#Write an RScript that creates a total_summary dataframe using the summarize() function to get 
#the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- suspension %>% summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), standard_deviation = sd(PSI))
#Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() 
#functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), standard_deviation = sd(PSI))
#In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine 
#if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension$PSI, mu = 1500, alternative = "two.sided")
#In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine 
#if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension$PSI, mu = 1500, alternative = "two.sided")
#Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() 
#argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
t.test(subset(suspension, Manufacturing_Lot == "Lot1")$PSI, mu = 1500, alternative = "two.sided")
t.test(subset(suspension, Manufacturing_Lot == "Lot2")$PSI, mu = 1500, alternative = "two.sided")
t.test(subset(suspension, Manufacturing_Lot == "Lot3")$PSI, mu = 1500, alternative = "two.sided")
