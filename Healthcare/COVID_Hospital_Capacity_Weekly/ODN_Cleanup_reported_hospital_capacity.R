##Cleaning script for data from HHS Data.gov for 
##Nevada specific hosptials as of 12/7/2020 re
##https://healthdata.gov/dataset/covid-19-reported-patient-impact-and-hospital-capacity-facility

##Step1 Load Data
library(readr)
weekly_timeseries_hospital_capacity <- read_csv("Healthcare/COVID_Hospital_Capacity_Weekly/reported_hospital_capacity_admissions_facility-level_weekly_average_timeseries_20201207.csv")
View(weekly_timeseries_hospital_capacity)

##Load Packages
library(tidyverse)
library(purr)
##Pull Nevada
view(weekly_timeseries_hospital_capacity)
#NV Hosptial List
nv_hospitals <- weekly_timeseries_hospital_capacity %>%
  filter(state == 'NV')
##Count of  NV Hospitals by type by city
nv_count_hospital_subtype <- nv_hospitals %>%
  count(city,hospital_subtype, sort = TRUE)

  