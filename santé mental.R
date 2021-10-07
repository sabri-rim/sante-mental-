# Import data
df <- read.csv("C:/Users/rim/Desktop/mental-health-in-tech-survey/santé mental.csv")
# Import libraries
library("tidyverse")
library("gridExtra")
# number of rows/columns
df %>% dim
# summary
df %>% summary
# Select variables
df <- df %>% select(treatment, Age, Gender, family_history, no_employees, tech_company) 

# check instructure of data including selected variables
df %>% str
#Whether employees have sought mental health care?
df$treatment %>% table
df$tech_company %>% table
# ordered no_employees level
level_order <- factor(df$no_employees, levels = c("1-5","6-25","26-100","100-500", "500-1000","More than 1000"))

# view the company distribution based on company size
df %>% ggplot(aes(x=level_order))+
  geom_bar(fill = "pink") + ggtitle("ordered company size")


