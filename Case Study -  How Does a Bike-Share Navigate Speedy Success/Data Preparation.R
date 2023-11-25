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
Data202201 <- read.csv("~/MEGA/ESTUDIOS PERSONALES/ESTUDIOS DE CARRERA (MI CARRERA)/Google Data Analytics/08Case Study/Dataset/2022_Data_Cyclistic/202201-divvy-tripdata.csv")
Data202202 <- read.csv("~/MEGA/ESTUDIOS PERSONALES/ESTUDIOS DE CARRERA (MI CARRERA)/Google Data Analytics/08Case Study/Dataset/2022_Data_Cyclistic/202202-divvy-tripdata.csv")
Data202203 <- read.csv("~/MEGA/ESTUDIOS PERSONALES/ESTUDIOS DE CARRERA (MI CARRERA)/Google Data Analytics/08Case Study/Dataset/2022_Data_Cyclistic/202203-divvy-tripdata.csv")
Data202204 <- read.csv("~/MEGA/ESTUDIOS PERSONALES/ESTUDIOS DE CARRERA (MI CARRERA)/Google Data Analytics/08Case Study/Dataset/2022_Data_Cyclistic/202204-divvy-tripdata.csv")
Data202205 <- read.csv("~/MEGA/ESTUDIOS PERSONALES/ESTUDIOS DE CARRERA (MI CARRERA)/Google Data Analytics/08Case Study/Dataset/2022_Data_Cyclistic/202205-divvy-tripdata.csv")
Data202206 <- read.csv("~/MEGA/ESTUDIOS PERSONALES/ESTUDIOS DE CARRERA (MI CARRERA)/Google Data Analytics/08Case Study/Dataset/2022_Data_Cyclistic/202206-divvy-tripdata.csv")
Data202207 <- read.csv("~/MEGA/ESTUDIOS PERSONALES/ESTUDIOS DE CARRERA (MI CARRERA)/Google Data Analytics/08Case Study/Dataset/2022_Data_Cyclistic/202207-divvy-tripdata.csv")
Data202208 <- read.csv("~/MEGA/ESTUDIOS PERSONALES/ESTUDIOS DE CARRERA (MI CARRERA)/Google Data Analytics/08Case Study/Dataset/2022_Data_Cyclistic/202208-divvy-tripdata.csv")
Data202209 <- read.csv("~/MEGA/ESTUDIOS PERSONALES/ESTUDIOS DE CARRERA (MI CARRERA)/Google Data Analytics/08Case Study/Dataset/2022_Data_Cyclistic/202209-divvy-tripdata.csv")
Data202210 <- read.csv("~/MEGA/ESTUDIOS PERSONALES/ESTUDIOS DE CARRERA (MI CARRERA)/Google Data Analytics/08Case Study/Dataset/2022_Data_Cyclistic/202210-divvy-tripdata.csv")
Data202211 <- read.csv("~/MEGA/ESTUDIOS PERSONALES/ESTUDIOS DE CARRERA (MI CARRERA)/Google Data Analytics/08Case Study/Dataset/2022_Data_Cyclistic/202211-divvy-tripdata.csv")
Data202212 <- read.csv("~/MEGA/ESTUDIOS PERSONALES/ESTUDIOS DE CARRERA (MI CARRERA)/Google Data Analytics/08Case Study/Dataset/2022_Data_Cyclistic/202212-divvy-tripdata.csv")

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