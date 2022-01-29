# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The variables that provide a non-random amount of variange to the mpg values in the dataset are vehicle length and ground clearance.  When we run a linear regression model using these variables against MPG as a dependent variable, we get p values that indicate these factors have a non-random effect on the MPG for this vehicle.  Vehicle length had a p-value of 2.6 x 10^-12 and ground clearance had a p-value of 5.21 x 10^-8.  Both of these are greatly lower than our significance values.

Is the slope of the linear model considered to be zero? Why or why not?

The slope of the linear model can not be considered to be zero since there is a p value of 5.35 x 10^-11.  This means its lower than even the extreme significance level.  This means we have to reject the null hypothesis, which means the relationship between some of our variables and the MPG is effectd by other factors than random chance.

The slope of the linear model is not considered to be zero since the p value for the intercept is significantly below 0.05 (5.08e-08)

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

This model can be considered as effective at predicting MPG of the MechaCar prototypes since the r squared value presented in our summary statistics has a value of 0.7149.  This means our model is 71% accurate.

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

When we check the overall variance of the suspension coils, we see that it does not exceed 100 psi.  However, when we group it by manufacturing lot, we see that all of the lots comply with designated variance of 100 PSI or less except for Lot 3.  Lot 3 has a variance of 170.2, which is extremely over the designated specifications.

## T-Tests on Suspension Coils

When we perform our one sample t-test for the suspension coils for all of the manufacturing lots, it shows that they are not statistically different from the population mean.  The P-value is .0603 which is not enough for us to reject the null hypothesis in this case.

When we breakdown and do T-Tests based on each lot number, we can make the following inferences.

For Lot 1, the result of the  t-test shows us that they are not statistically different from the population mean.  The P-Value is 1.0 which is not enough for us to reject the null hypothesis.

For Lot 2, the result of the t-test shows us that the 



