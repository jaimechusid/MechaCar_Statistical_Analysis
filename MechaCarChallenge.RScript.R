library(dplyr)
cars_df <- read.csv('MechaCar_mpg.csv')
lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=cars_df)
summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=cars_df))
