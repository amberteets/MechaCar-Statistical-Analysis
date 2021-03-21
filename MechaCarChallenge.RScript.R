# DELIVERABLE 1
# Design a linear model that predicts the mpg of MechaCar prototypes

# Load dplyr
library(dplyr)
library(tidyverse)

# Import and read MechaCar_mpg as csv
mcar <- read.csv(file="Data/MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# Perform linear regression using all 6 variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
     ground_clearance + AWD, data = mcar)

# Determine p-value and r-squared value for the linear regression model
# Using the summary() function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD, data = mcar))

# DELIVERABLE 2
# Visualize the suspension coil's PSI continuous variable across all lots
# Summary statistics on PSI metrics for each lot

# Import and read Suspension_Coil as csv
sus_coil <- read.csv(file="Data/Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# Create summary dataframe to get mean, median, variance, and stdev of PSI
total_summary <- sus_coil %>% summarize(Mean_PSI=mean(PSI),
                                        Median_PSI=median(PSI),
                                        Variance=var(PSI),
                                        SD=sd(PSI))

# Create summary dataframe by lot
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI),
            Variance=var(PSI), SD=sd(PSI), .groups = "keep")
                                        