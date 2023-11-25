#Activate libraries
library(tidyverse)
library(data.table)
library(psych)
library(hrbrthemes)
library(here)
library(skimr)
library(janitor)
library(Tmisc)

#Import data
Data202201 <- read.csv("202201-divvy-tripdata.csv")
Data202202 <- read.csv("202202-divvy-tripdata.csv")
Data202203 <- read.csv("202203-divvy-tripdata.csv")
Data202204 <- read.csv("202204-divvy-tripdata.csv")
Data202205 <- read.csv("202205-divvy-tripdata.csv")
Data202206 <- read.csv("202206-divvy-tripdata.csv")
Data202207 <- read.csv("202207-divvy-tripdata.csv")
Data202208 <- read.csv("202208-divvy-tripdata.csv")
Data202209 <- read.csv("202209-divvy-tripdata.csv")
Data202210 <- read.csv("202210-divvy-tripdata.csv")
Data202211 <- read.csv("202211-divvy-tripdata.csv")
Data202212 <- read.csv("202212-divvy-tripdata.csv")

#Verify column names
colnames(Data202201)
colnames(Data202202)
colnames(Data202203)
colnames(Data202204)
colnames(Data202205)
colnames(Data202206)
colnames(Data202207)
colnames(Data202208)
colnames(Data202209)
colnames(Data202210)
colnames(Data202211)
colnames(Data202212)

#Combine tables
Data_trip_2022 <- rbind(Data202201,Data202202,Data202203,Data202204,Data202205,Data202206,Data202207,
                        Data202208,Data202209,Data202210,Data202211,Data202212)

#Validation
str(Data_trip_2022)
View(head(Data_trip_2022))
