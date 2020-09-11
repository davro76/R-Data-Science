#upload required library
library(tidyverse)
library(dplyr)
library(nycflights13)

#data set
nycflights13::flights

#access data set's variables  
attach(flights)

#Find all flights that: Had an arrival delay of two or more hours
flights_a<-filter(flights, arr_delay>=120)
flights_a

#Find all flights that:Flew to Houston (IAH or HOU)
flights_b<-filter(flights, dest=="IAH" | dest=="HOU")
flight_b

#Find all flights that:Were operated by United, American, or Delta
flights_c<-filter(flights, carrier=="UA" |carrier=="AA" |carrier=="DL")
flights_c

#Find all flights that:Departed in summer (July, August, and September)
flights_summer<-filter(flights, month==7 |month==8 |month==9)
flights_summer

#Find all flights that:Arrived more than two hours late, but did not leave late
flights_e<-filter(flights, arr_delay>=120, dep_delay<=0)
flights_e

#Find all flights that:Were delayed by at least an hour, but made up over 30 minutes in flight
flights_f<-filter(flights, dep_delay>=60, air_time>30)
flights_f








