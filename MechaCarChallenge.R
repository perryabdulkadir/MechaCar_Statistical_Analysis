library(dplyr)

MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance  + AWD, MechaCar_mpg)) #summarize linear model