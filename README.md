# Overview

## Linear Regression to Predict MPG

![alt text](https://github.com/lopezroxann/MechaCar_Statistical_Analysis/blob/main/Resources/deliverable1.png)

- <b>Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?</b></br>
Looking at the dataset above, two of the five variables that provided the most non-random amount of variance were vehicle length with a p-value of 2.60e-12 and ground clearance at a p-value of 5.21e-08.


- <b>Is the slope of the linear model considered to be zero? Why or why not? </b></br>
No, the slope is not considered to be at zero as we can see with the vehicle length and ground clearance p-values are less than the significance level of 0.05.

- <b>Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?</b></br>
Yes, since the r-squared value is at 0.72, this is a good indicator that this linear model can predict mpg values effectively.


## Summary Statistics on Suspension Coils
![alt text](https://github.com/lopezroxann/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary.png)
<b>Total Summary</b> </br>
As the variance resulted at 62.29, it is less than 100 pounds per square inch. Therefore, this meets the manufacturing data design specification for all lots combined.


![alt text](https://github.com/lopezroxann/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary.png)
<b>Lot Summary</b> </br>
Lots 1 and 2 fit within the design specifications, but there is a major problem with Lot 3. It greatly exceeds the max limit as it reached 170 PSI and it is not to be considered within the design specification.

## T-Tests on Suspension Coils

<b>T-Test for All Lots Combined</b></br>

![alt text](https://github.com/lopezroxann/MechaCar_Statistical_Analysis/blob/main/Resources/ttest1.png)

The p-value of all lots combined sits at 0.06, which does not pass the significance level of 0.05. There isn't a significant variation compared to the population mean. This signifies that we don't have enough evidence to reject the null hypothesis.

<b>T-Test per Lot</b> </br>

![alt text](https://github.com/lopezroxann/MechaCar_Statistical_Analysis/blob/main/Resources/ttest2_4.png)

Looking at the lots individually tells a different story. Lots 1 & 2 which have a p-value of 1.0 and 0.61 respectively, also does not pass the significance level of 0.05. Therefore, we do not have enough evidence to reject the null hypothesis. However, lot 3's p-value is at 0.041 and does pass our significance level of 0.05. We have enough evidence to fail to reject the null hypothesis for this lot only.

## Study Design: MechaCar vs Competition

- <b>What metric or metrics are you going to test?</b></br>
The metric that I would like to test to compare against the competition would be city or highway fuel efficiency. Considering the high gas prices that we are facing at the moment, many consumers would most likely want to purchase a vehicle that has a great fuel efficiency. We would like to prove to the consumer that MechaCar has better fuel efficiency over our competition.

- <b>What is the null hypothesis or alternative hypothesis?</b></br>
  - <b>Null Hypothesis:</b> There is no statistical difference in the mean city or highway fuel efficiency between the MechaCar and its competitors.
  - <b>Alternate Hypothesis:</b> There is a statistical difference in the mean city or highway fuel efficiency between the MechaCar and its competitors.

- <b>What statistical test would you use to test the hypothesis? And why?<b></br>
As MechaCar and our competitor are considered independent variables and the city or highway fuel effeciency is a dependent variable, it is best to use a two-sample T-Test.
  
- <b>What data is needed to run the statistical test?<b></br>
City or highway fuel efficiency can be measured by calculating how many miles are driven per gallon of fuel. Consumers are looking to compare which of the competitors has the best and highest MPG.
