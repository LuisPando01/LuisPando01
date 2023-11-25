#Rows with "na" values
colSums(is.na(Data_trip_2022))

#Removing missing
Clean_trip_data <- Data_trip_2022[complete.cases(Data_trip_2022),]

#Removing duplicates
Clean_trip_data <- distinct(Clean_trip_data)

#Remove data with greater started_at than ended_at
Clean_trip_data<- Clean_trip_data %>% 
  filter(started_at < ended_at)

#Remove na
Clean_trip_data <- drop_na(Clean_trip_data)
Clean_trip_data <- remove_empty(Clean_trip_data)
Clean_trip_data <- remove_missing(Clean_trip_data)

#Validate Cleaned data
colSums(is.na(Clean_trip_data))
View(filter(Clean_trip_data, Clean_trip_data$started_at > Clean_trip_data$ended_at))

#Separate the date for a better analysis
Clean_trip_data$date <- as.Date(Clean_trip_data$started_at)
Clean_trip_data$week_day <- format(as.Date(Clean_trip_data$date), "%A")
Clean_trip_data$month <- format(as.Date(Clean_trip_data$date), "%b_%y")
Clean_trip_data$year <- format(Clean_trip_data$date, "%Y")

#Separate column for time
Clean_trip_data$time <- as.POSIXct(Clean_trip_data$started_at, format = "%Y-%m-%d %H:%M:%S")
Clean_trip_data$time <- format(Clean_trip_data$time, format = "%H:%M")

#Add ride length column
Clean_trip_data$ride_length <- difftime(Clean_trip_data$ended_at, Clean_trip_data$started_at, units = "mins")

#Validation of new columns
View(head(Clean_trip_data))

#Select the data we are going to use
Clean_trip_data <- Clean_trip_data %>% 
  select(rideable_type, member_casual, month, year, time, started_at, week_day, ride_length)

#Save the cleaned data
write.csv(Clean_trip_data,file = "Clean_trip_data.csv",row.names = FALSE)
