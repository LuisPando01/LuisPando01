#Import data
Clean_trip_data <- read.csv("Clean_trip_data.csv")

#Review the data
View(head(Clean_trip_data))

#Statistics values of ride length
View(describe(Clean_trip_data$ride_length, fast=TRUE))
summary(Clean_trip_data$ride_length)
hist(Clean_trip_data$ride_length)

#Individual Values
mean(Clean_trip_data$ride_length)
median(Clean_trip_data$ride_length)
max(Clean_trip_data$ride_length)
min(Clean_trip_data$ride_length)

#Comparation between members and casual users
aggregate(Clean_trip_data$ride_length ~ Clean_trip_data$member_casual, FUN = mean)
aggregate(Clean_trip_data$ride_length ~ Clean_trip_data$member_casual, FUN = median)
aggregate(Clean_trip_data$ride_length ~ Clean_trip_data$member_casual, FUN = max)
aggregate(Clean_trip_data$ride_length ~ Clean_trip_data$member_casual, FUN = min)

#Order days of the week
Clean_trip_data$week_day <- ordered(Clean_trip_data$week_day,levels=c("lunes", "martes", "miércoles", 
                                                                      "jueves", "viernes", 
                                                                      "sábado", "domingo"))

#Average ride time by each day for members vs casual users
aggregate(Clean_trip_data$ride_length ~ Clean_trip_data$member_casual + Clean_trip_data$week_day, FUN = mean)

#Rides data by type and weekday
View(Clean_trip_data %>% 
       group_by(member_casual, week_day) %>% 
       summarise(number_of_ride = n(),
                 avgerage_duration = mean(ride_length),
                 median_duration = median(ride_length),
                 max_duration = max(ride_length),
                 min_duration = min(ride_length)))

#Visualization for number of rides
Clean_trip_data %>% 
       group_by(member_casual, week_day) %>% 
       summarise(number_of_ride = n(),
                 average_duration = mean(ride_length)) %>%
  ggplot(aes(x = week_day, y = number_of_ride, fill = member_casual)) +
  geom_col(position = "dodge")

#Visualization for number of rides
Clean_trip_data %>% 
  group_by(member_casual, week_day) %>% 
  summarise(number_of_ride = n(),
            average_duration = mean(ride_length)) %>%
  ggplot(aes(x = week_day, y = average_duration, fill = member_casual)) +
  geom_col(position = "dodge")

#Rider length data by customer type and month
View(Clean_trip_data %>% 
       group_by(member_casual, month) %>% 
       summarise(nummber_of_ride = n(),
                 average_duration = mean(ride_length),
                 median_duration = median(ride_length),
                 max_duration = max(ride_length),
                 min_duration = min(ride_length)))
