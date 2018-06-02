#To zadania co do których miałaś rozterki

#5-4 
#Można tak

library(readr)
movies <- read_csv("movies.csv")
library(tidyverse)


#5-4
filter (movies, Animation == 1, year >=1990 & year < 2000, votes >=(mean(votes) + 2*mad(votes))) %>% 
  arrange(desc(rating))
  
#To robi Ci następujące rzeczy:

* flirtuje animowane filmy lat 90
* Filmy, które mają więcej głosów niż średnia głosów + 2 odchylenia standardowe (tak se popatrzyłam na te dane i tyle wyszło ok) wg Twego życzenia
* A następnie jeszcze to układa wg ratingu

# Podobnie możesz zrobić w 5-5, ale żeby było ich nie za dużo to użyj 10 odchylen wtedy bede tylko te naaaaprawde dlugasne

#5-5
filter(movies, Drama == 1, length >= (mean(length) + 10*mad(length))) %>% 
  arrange(desc(rating)) 
  
 #ta funkcja która usuwa dane ktorych nie ma to na.rm=FALSE
 
 
   
  
