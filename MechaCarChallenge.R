#import dplyr
library(dplyr) 

#deliverable 1

#import mechacar_mpg.csv
mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
#perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table)
#statistical summary of linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table))

#deliverable 2

#import suspension_coil.csv
suspension_coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors=F)
#total summary of PSI for all manufacturing lots
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), StDev=sd(PSI))
#lot_summary for each manufacturing lot
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),StDev=sd(PSI))

#deliverable 3

#t.test for all manufacturing lots
t.test(suspension_coil$PSI, mu=1500)
#t.test for each manufacturing lot
t.test(subset(suspension_coil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(suspension_coil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(suspension_coil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)