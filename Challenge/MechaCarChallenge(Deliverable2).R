library(dplyr)
mechacarchallenge<- read.csv(file = 'MechaCar_mpg.csv')
lm(formula = mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=mechacarchallenge)
summary(lm(formula = mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=mechacarchallenge))
Suspension_Coil<- read.csv('Suspension_Coil.csv')
Total_summary <- Suspension_Coil %>%   summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
Lot_Summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>%   summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')
