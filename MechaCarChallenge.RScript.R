#deliverable1
library() #load dplyr package
mechacar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_table)) #generate summary statistics
#deliverable2
suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create summary table
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create lot summary table
#deliverable3
t.test(suspension_table$PSI,mu=1500)#t-test across all lots
t.test(subset(suspension_table,Manufacturing_Lot=="Lot1")$PSI,mu=1500) #t-test for Lot1
t.test(subset(suspension_table,Manufacturing_Lot=="Lot2")$PSI,mu=1500) #t-test for Lot2
t.test(subset(suspension_table,Manufacturing_Lot=="Lot3")$PSI,mu=1500) #t-test for Lot3
