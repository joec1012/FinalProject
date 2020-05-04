# FinalProject
The purpose of this project was to take in account the strength coaches salary into the on field results (Wins). Using a logistic regression model we will see the independent variable (Salaries) has on wins. 
# How to replicate
All the files listed above will allow you to replicate the results of this experiment. That along with the addition of R-studio and packages listed below will produce the same results. 

1. Download 2019-2020 stats for Division 1 Football from CollegeFootballData.com
2. Run necessary R code to pull strength coach salaries from the USA today website. 
3. Clean data of salaries of scraped data, replace missing with N/A.
4. Bring CSV file of wins and losses into the environment. 
5. Merge tables. 
6. Set up logistic regression model (Ordinary Least Squares) with wins being the dependent variable. 
7. Run model and find the results. 

# Data of Project
- The data used for the calculations is under Data.csv and salaries can be scraped form the link given. 
# Packages Required
library(rvest)
library(readr)
library(DT)
library(tidyverse)
library(stargazer)
