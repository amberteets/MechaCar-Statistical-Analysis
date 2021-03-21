# PURPOSE:
# Design a linear model that predicts the mpg of MechaCar prototypes

# Load dplyr
library(dplyr)

# Import and read MechaCar_mpg as csv
mcar <- read_csv(file="Data/MechaCar_mpg.csv")

# Perform linear regression using all 6 variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
     ground_clearance + AWD, data = mcar)

# Determine p-value and r-squared value for the linear regression model
# Using the summary() function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD, data = mcar))