# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

The summary() function indicated that the vehicle_length and ground_clerance variables provide a non-random impact on the miles per gallon. All other variables have a small enough p-values to provide only a random amount of variance.

The slope isn't zero since our two p-values in vehicle_length and ground_clerance are greater than 0.05.

Our R-squared for this model is 0.7149 which is high enough to be considered effective

![Deliverable1_lm_screen](https://user-images.githubusercontent.com/90660790/147866403-f7e1ea01-4a6b-4c4e-b60d-1df8a71d4c7c.PNG)

![Deliverable1_summary_screen](https://user-images.githubusercontent.com/90660790/147866413-72238ec5-38b3-421c-a45f-f286ec51d058.PNG)

## Summary Statistics on Suspension Coils

The total summary shows that as a whole the PSI variance is 62.3 which falls within the 100psi upper limit. However, the lot_summary table that we created shows that lot 3 has a PSI variance at 170, which is not only much higher than the upper limit but also higher than the other lots by a significant margin.

## T-Tests on Suspension Coils

The null hypothesis cannot be rejected for the PSI for the Suspension_Coil.csv as the p-value is greater than the assumed significance level of 0.05

The first two lots have p-values above 0.05 and thus the null hypothesis can't be rejected

Lot 3 is again an outlier. Lot 3 has a p-value of 0.04 which is less than our assumed significance of 0.05.

![t-test_screen](https://user-images.githubusercontent.com/90660790/147866406-40b57847-2fb9-4844-a17a-dfc5ac5360a1.PNG)

## Study Design: MechaCar vs Competition

City mpg of MechaCar vehicles in comparison with other manufacturers

With metropolitian suburbs explosive growth over the past decade the question of what the most efficient vehicles are in these setting arises. So I will try to determine the efficacy of MechaCar's town cars measured up against the compititions line up.

The metric we'll be testing is the average miles per gallon that our cars get in a pre-determined geographic range.

H0: MetraCar's urban and suburban miles per gallon are statistically similar to it's competitors.
Ha: MetraCar's urban and suburban miles per gallon is statistically distinct from it's competitors (higher or lower).

The test we would use for this is the Chi-Squared Test

The data we would gather would be a recorded mpg of cars that have only been driven in and around a metropolitan area.

