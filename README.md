# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

To predict the gas mileage (mpg) of MechaCar proptypes, multiple linear regression was conducted using all available variables in the dataset:

- Vehicle Length
- Vehicle Weight
- Spoiler Angle
- Ground Clearance
- All-Wheel Drive (AWD)

H<sub>0</sub>: The slope of the linear model is 0
H<sub>a</sub>: The slope of the linear model is not 0

The summary of results was as follows:

#### Fig. 1.0
![MechaCar_LinReg_Summary](https://github.com/amberteets/MechaCar-Statistical-Analysis/blob/main/Resources/MechaCar_LinReg_Sum.png)

### Predictive Coefficients
Based on the Pr(>|t|) values displayed above, which represent the probability that each variable/coefficient provides a random amount of variance to the linear model, **vehicle length** provides the greatest degree of non-random variance to the mpg values in the dataset, followed by **ground clearance**. 

### Slope of Linear Model
The multiple R-squared value from the linear regression model of 0.7149 suggests that approximately 71% of all mpg predictions for MechaCar prototypes will be correct when using this model. Additionally, the p-value of 5.35 x 10^-11 is significantly less than the standard significance level of 0.05. Therefore, there is sufficient evidence to reject the null hypothesis (H<sub>0</sub>), meaning that **the slope of the linear model is not zero.**

### Accuracy of Linear Model
This linear model predicts mpg values for MechaCar prototypes somewhat effectively. The results of the linear regression suggest that the model is more effective than a purely random model. However, the lack of significant coefficients/variables suggests that the model may be *overfit*. 
