library(dplyr)
cars_df <- read.csv('MechaCar_mpg.csv')
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=cars_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=cars_df))

total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')

t.test(suspension_coil$PSI, mu=1500)
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot=='Lot1'), mu=1500)
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot=='Lot2'), mu=1500)
t.test(subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot=='Lot3'), mu=1500)
