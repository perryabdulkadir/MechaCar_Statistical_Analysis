library(dplyr)

MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance  + AWD, MechaCar_mpg)) #summarize linear model

Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- Suspension_Coil %>% summarize (Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))#create summary table

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize (Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))#create lot summary table

t.test((Suspension_Coil$PSI), mu=1500) #compare sample versus population means

lot1 <- Suspension_Coil[Suspension_Coil$Manufacturing_Lot == 'Lot1',]
t.test((lot1$PSI), mu=1500) #compare sample versus population means

lot2 <- Suspension_Coil[Suspension_Coil$Manufacturing_Lot == 'Lot2',]
t.test((lot2$PSI), mu=1500) #compare sample versus population means

lot3 <- Suspension_Coil[Suspension_Coil$Manufacturing_Lot == 'Lot3',]
t.test((lot3$PSI), mu=1500) #compare sample versus population means