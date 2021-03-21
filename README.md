# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

To predict the gas mileage (mpg) of MechaCar proptypes, multiple linear regression was conducted using all available variables in the dataset:

- Vehicle Length
- Vehicle Weight
- Spoiler Angle
- Ground Clearance
- All-Wheel Drive (AWD)

H<sub>0</sub>: The slope of the linear model is 0.

H<sub>a</sub>: The slope of the linear model is not 0.

The summary of results was as follows:

#### Fig. 1.0
![MechaCar_LinReg_Summary](https://github.com/amberteets/MechaCar-Statistical-Analysis/blob/main/Resources/MechaCar_LinReg_Sum.png)

### Predictive Coefficients
Based on the Pr(>|t|) values displayed above, which represent the probability that each variable/coefficient provides a random amount of variance to the linear model, **vehicle length** provides the greatest degree of non-random variance to the mpg values in the dataset, followed by **ground clearance**. 

### Slope of Linear Model
The multiple R-squared value from the linear regression model of 0.7149 suggests that approximately 71% of all mpg predictions for MechaCar prototypes will be correct when using this model. Additionally, the p-value of 5.35 x 10^-11 is significantly less than the standard significance level of 0.05. Therefore, there is sufficient evidence to reject the null hypothesis (H<sub>0</sub>), meaning that **the slope of the linear model is not zero.**

### Accuracy of Linear Model
This linear model predicts mpg values for MechaCar prototypes somewhat effectively. The results of the linear regression suggest that the model is more effective than a purely random model. However, the lack of significant coefficients/variables suggests that the model may be *overfit*. 

## Summary Statistics on Suspension Coils

The design specifications for MechaCar suspension coils stipulate that the variance of the suspension coils must not exceed 100 pounds per square inch (PSI). To test adherence to this requirement, summary statistics were calculated for suspension coils as a whole, as well as by each manufacturing lot.

### Total Adherence

Based on summary statistics for all PSI data, the MechaCar manufacturing meets the variance standard because the total variance of 62.3 PSI is less than 100 PSI.

#### Fig. 2.0: Total Summary
<kbd> <img src="https://github.com/amberteets/MechaCar-Statistical-Analysis/blob/main/Resources/total_summary.png" /> <kbd>

### Lot Adherence

When PSI data is examined lot-by-lot, it is clear that Manufacturing Lots 1 & 2 are in compliance with the 100 PSI maximum variance. However, Manufacturing Lot 3 is not adhereing to the standard.

#### Fig. 2.1 Lot Summary
<kbd> <img src="https://github.com/amberteets/MechaCar-Statistical-Analysis/blob/main/Resources/lot_summary.png" /> <kbd>
  
## T-Tests on Suspension Coils

Note: All subsequent t-tests assume a significance level of 0.05.

### All Manufacturing Lots
H<sub>0</sub>: There is no statistical difference between the observed sample mean PSI of all manufacturing lots and the population mean of 1500 PSI.
H<sub>a</sub>: There is a statistical difference between the observed sample mean PSI of all manufacturing lots and the population mean of 1500 PSI.

#### Fig. 3.0: T-test for All Lots
<kbd> <img src="https://github.com/amberteets/MechaCar-Statistical-Analysis/blob/main/Resources/ttest_all.png" /> <kbd>
  
Because the p-value of 0.06028 is not less than the significance level, we fail to reject the null hypothesis. There is insufficient evidence to infer a statistical difference between the observed sample mean PSI and 1500.

### Individual Manufacturing Lots
H<sub>0</sub>: There is no statistical difference between the observed sample mean PSI of each manufacturing lot and the population mean of 1500 PSI.
H<sub>a</sub>: There is a statistical difference between the observed sample mean PSI of each manufacturing lot and the population mean of 1500 PSI.

#### Fig. 3.1: T-test for Lot 1
<kbd> <img src="https://github.com/amberteets/MechaCar-Statistical-Analysis/blob/main/Resources/ttest_lot1.png" /> <kbd>
  
Because the p-value of 1 is not less than the significance level, we fail to reject the null hypothesis. There is insufficient evidence to infer a statistical difference between the observed sample mean PSI for Lot 1 and the population mean of 1500.

#### Fig. 3.2: T-test for Lot 2
<kbd> <img src="https://github.com/amberteets/MechaCar-Statistical-Analysis/blob/main/Resources/ttest_lot2.png" /> <kbd>
  
Because the p-value of 0.6072 is not less than the significance level, we fail to reject the null hypothesis. There is insufficient evidence to infer a statistical difference between the observed sample mean PSI for Lot 2 and the population mean of 1500.

#### Fig. 3.3: T-test for Lot 3
<kbd> <img src="https://github.com/amberteets/MechaCar-Statistical-Analysis/blob/main/Resources/ttest_lot3.png" /> <kbd>
  
Because the p-value of 0.04168 is less than the significance level, there is sufficient evidence to reject the null hypothesis. There *is* a statistically significant difference between the observed mean PSI of Lot 3 and the population mean of 1500.
