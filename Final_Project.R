#Strength Coach Salary on Probability of Wins
#Joseph Castiglione
library(rvest)
library(readr)
library(DT)
library(tidyverse)



#::::::::::::::::::::::::::::::::::::::::::::::::::;

#Salaries of Division 1 Strength Coaches
strengthcoaches<- "https://sports.usatoday.com/ncaa/salaries/football/strength"
html<- read_html(strengthcoaches)
Salary <- html %>% html_node("#content > div.full-width > div > section > div.datatable-wrapper.datatable-wrapper-fixed-column > table") %>% html_table(fill=TRUE)
Salary.table<-html_text(Salary, trim=FALSE)
View(Salary)
Salary.table<-Salary.table[[1]]
View(Salary.table)

#Win/Losses
Record <- read.csv('data.csv')
names(Record)[2]<- "School"
View(Record)

#Merge Process
Merged_table <- merge(Salary,Record, by = "School")
View(Merged_table)
names(Merged_table)[6] <- "Total.Pay"


# :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Strength_of_Win <- lm(total.wins ~ Total.Pay, data = Merged_table)
library(stargazer)
stargazer((Strength_of_Win))
summary(Strength_of_Win)
print(stargazer(Strength_of_Win), scalebox = '0.7')