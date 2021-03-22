# MechaCar Statistical Analysis
Columbia Data Science Module 15


## Linear Regression to Predict MPG
After reading the .csv into R, I used the code below to run a linear regression on vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, and AWD to see which variables help predict MPG. 

```
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance  + AWD, MechaCar_mpg))
```
This yielded the summary table below: 

![del_1_printout.PNG](Resources/del_1_printout.PNG)
