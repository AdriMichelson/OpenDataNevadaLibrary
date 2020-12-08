##Cleaning script for data from HHS Data.gov for 
##Nevada specific hosptials

##Step1 Load Data
library(readr)
weekly_timeseries_hospital_capacity <- read_csv("Healthcare/COVID_Hospital_Capacity_Weekly/reported_hospital_capacity_admissions_facility-level_weekly_average_timeseries_20201207.csv")
View(weekly_timeseries_hospital_capacity)

##Load Packages
library(tidyverse)
library(purr)
##Pull Nevada
view(weekly_timeseries_hospital_capacity)

nv_hospitals <- weekly_timeseries_hospital_capacity %>%
  filter(state == 'NV')

nv_count_hospital_subtype <- nv_hospitals %>%
  count(city,hospital_subtype, sort = TRUE)

  