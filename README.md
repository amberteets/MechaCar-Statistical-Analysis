# MechaCar Statistical Analysis

## Background and Purpose

An automobile prototype, the MechaCar, is suffering from production issues that are blocking the manufacting team's progress. The purpose of this analysis is to examine production data for insights that may help the team.

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Analysis

### Linear Regression to Predict MPG

To predict the gas mileage (mpg) of MechaCar proptypes, multiple linear regression was conducted using all available variables in the dataset:

- Vehicle Length
- Vehicle Weight
- Spoiler Angle
- Ground Clearance
- All-Wheel Drive (AWD)

Null / Alternate Hypotheses:
- H<sub>0</sub>: The slope of the linear model is 0.
- H<sub>a</sub>: The slope of the linear model is not 0.

The summary of results was as follows:

##### Fig. 1.0
<kbd> <img src="https://github.com/amberteets/MechaCar-Statistical-Analysis/blob/main/Resources/MechaCar_LinReg_Sum.png" /> <kbd>

#### Predictive Coefficients
Based on the Pr(>|t|) values displayed above, which represent the probability that each variable/coefficient provides a random amount of variance to the linear model, **vehicle length** provides the greatest degree of non-random variance to the mpg values in the dataset, followed by **ground clearance**. 

#### Slope of Linear Model
The multiple R-squared value from the linear regression model of 0.7149 indicates that approximately 71% of the variance of all mpg predictions for MechaCar prototypes can be explained by the model. Additionally, the p-value of 5.35 x 10^-11 is significantly less than the standard significance level of 0.05. Therefore, there is sufficient evidence to reject the null hypothesis (H<sub>0</sub>), meaning that **the slope of the linear model is not zero.**

#### Accuracy of Linear Model
This linear model predicts mpg values for MechaCar prototypes somewhat effectively. The results of the linear regression suggest that the model is more effective than a purely random model. However, the lack of significant coefficients/variables suggests that the model may be *overfit*. 

### Summary Statistics on Suspension Coils

The design specifications for MechaCar suspension coils stipulate that the variance of the suspension coils must not exceed 100 pounds per square inch (PSI). To test adherence to this requirement, summary statistics were calculated for suspension coils as a whole, as well as by each manufacturing lot.

#### Total Adherence

Based on summary statistics for all PSI data, the MechaCar manufacturing meets the variance standard because the total variance of 62.3 PSI is less than 100 PSI.

##### Fig. 2.0: Total Summary
<kbd> <img src="https://github.com/amberteets/MechaCar-Statistical-Analysis/blob/main/Resources/total_summary.png" /> <kbd>

#### Lot Adherence

When PSI data is examined lot-by-lot, it is clear that Manufacturing Lots 1 & 2 are in compliance with the 100 PSI maximum variance. However, Manufacturing Lot 3 is not adhereing to the standard.

##### Fig. 2.1 Lot Summary
<kbd> <img src="https://github.com/amberteets/MechaCar-Statistical-Analysis/blob/main/Resources/lot_summary.png" /> <kbd>
  
### T-Tests on Suspension Coils

Note: All subsequent t-tests assume a significance level of 0.05.

#### All Manufacturing Lots
Null / Alternate Hypotheses:
- H<sub>0</sub>: There is no statistical difference between the observed sample mean PSI of all manufacturing lots and the population mean of 1500 PSI.
- H<sub>a</sub>: There is a statistical difference between the observed sample mean PSI of all manufacturing lots and the population mean of 1500 PSI.

##### Fig. 3.0: T-test for All Lots
<kbd> <img src="https://github.com/amberteets/MechaCar-Statistical-Analysis/blob/main/Resources/ttest_all.png" /> <kbd>
  
Because the p-value of 0.06028 is not less than the significance level, we fail to reject the null hypothesis. There is insufficient evidence to infer a statistical difference between the observed sample mean PSI and 1500.

### Individual Manufacturing Lots
Null / Alternate Hypotheses:
- H<sub>0</sub>: There is no statistical difference between the observed sample mean PSI of each manufacturing lot and the population mean of 1500 PSI.
- H<sub>a</sub>: There is a statistical difference between the observed sample mean PSI of each manufacturing lot and the population mean of 1500 PSI.

##### Fig. 3.1: T-test for Lot 1
<kbd> <img src="https://github.com/amberteets/MechaCar-Statistical-Analysis/blob/main/Resources/ttest_lot1.png" /> <kbd>
  
Because the p-value of 1 is not less than the significance level, we fail to reject the null hypothesis. There is insufficient evidence to infer a statistical difference between the observed sample mean PSI for Lot 1 and the population mean of 1500.

##### Fig. 3.2: T-test for Lot 2
<kbd> <img src="https://github.com/amberteets/MechaCar-Statistical-Analysis/blob/main/Resources/ttest_lot2.png" /> <kbd>
  
Because the p-value of 0.6072 is not less than the significance level, we fail to reject the null hypothesis. There is insufficient evidence to infer a statistical difference between the observed sample mean PSI for Lot 2 and the population mean of 1500.

##### Fig. 3.3: T-test for Lot 3
<kbd> <img src="https://github.com/amberteets/MechaCar-Statistical-Analysis/blob/main/Resources/ttest_lot3.png" /> <kbd>
  
Because the p-value of 0.04168 is less than the significance level, there is sufficient evidence to reject the null hypothesis. There *is* a statistically significant difference between the observed mean PSI of Lot 3 and the population mean of 1500.

### Study Design: MechaCar vs. Competition

To quantify how MechaCar performs against its competition, a statistical study could be undertaken to determine whether or not there is a statistically significant difference in MechaCar's performance on various metrics when compared to other auto manufacturers. Further study of consumer preferences is needed to determine which exact metrics to compare. However, using safety rating as an example, the null and alternate hypotheses would be as follows:
- H<sub>0</sub>: There is no statistical difference between the mean safety rating of a sample of MechaCar vehicles and the mean safety rating of a sample of a competitor's vehicles.
- H<sub>a</sub>: There is a statistical difference between the mean safety rating of a sample of MechaCar vehicles and the mean safety rating of a sample of a competitor's vehicles.

To test the hypothesis, a pair t-test is appropriate because we are comparing two samples from different populations.

To perform this test, necessary data include:
- A sufficiently large sample of safety ratings from MechaCar's population of vehicles
- A sufficiently large sample of safety ratings from the competitor's population of vehicles
