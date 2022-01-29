# Import Deplyr
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

#Perform linear regression using the lm() function. 
#In the lm() function, pass in all six variables (i.e., columns), 
#and add the dataframe you created in Step 4 as the data parameter.
?lm()
LinearModel<-lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar) #create linear model
LinearModel
summary(LinearModel) #summarize linear model


Suspension_Coils <- read.csv('Suspension_Coil.csv', check.names = F)
Suspension_Coils

total_summary <- Suspension_Coils %>%
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
total_summary

lot_summary <- Suspension_Coils %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups='keep')

lot_summary


?t.test()    

t.test(Suspension_Coils$PSI,mu=1500)
t.test(subset(Suspension_Coils,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
t.test(subset(Suspension_Coils,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
t.test(subset(Suspension_Coils,Manufacturing_Lot=="Lot3")$PSI,mu=1500)

