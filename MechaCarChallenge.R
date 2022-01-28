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

