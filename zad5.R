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

# * flirtuje animowane filmy lat 90
# * Filmy, które mają więcej głosów niż średnia głosów + 2 odchylenia standardowe (tak se popatrzyłam na te dane i tyle wyszło ok) wg Twego życzenia
# * A następnie jeszcze to układa wg ratingu

#Wymyśliłam jeszcze takie o:
 
  filter(movies, Animation == 1, year >=1990 & year < 2000) %>%
  group_by(rating) %>% 
  arrange(desc(rating))

# To grupuje na rozne oceny ratingu (10.0, 9.90 etc...) i je pokazuje od najwiekszej
# Najwyzszy rating to 9.30 w tej grupie
# I następnie tak

filter(movies, Animation == 1, year >=1990 & year < 2000) %>%
group_by(rating) %>% 
  arrange(desc(rating)) %>% 
  filter(rating >= 9.30)

#Flirtuje ci wszystko powyżej 9.30, okazuje sie że są tylko 2 więc można przesunąc do 9.00 i żeby
# nie było tak prosto dodać kwestię głosów 

filter(movies, Animation == 1, year >=1990 & year < 2000) %>%
  group_by(rating) %>% 
  arrange(desc(rating)) %>% 
  filter(rating >= 9.00, votes >=(mean(votes) + 2*mad(votes)))

# OKAZUJE SIĘ ŻE JEST TYLKO JEDEN FILM 
# Więc obniżamy rating do 8.80 a głosy do średnia + jedno odchylenie oraz dodajemy jeszcze aby pokazywalo sie wg ilosci glosow
# wychodzi to

filter(movies, Animation == 1, year >=1990 & year < 2000) %>%
  group_by(rating) %>% 
  arrange(desc(rating)) %>% 
  filter(rating >= 8.80, votes >=(mean(votes) + mad(votes))) %>% 
  arrange(desc(votes))

# TO DAJE NAM TOP3 FILMÓW ANIMOWANYCH LAT 90!!!! YAAAY! WEDŁUG:
# ILOŚCI GŁOSÓW (powyzej srednia+odch)
# RATINGU (powyzej 8.80)
# pewnie naokolo ale jest super
# Jeszcze tak wymyśliłam

filter(movies, Animation == 1, year >=1990 & year < 2000 &
       rating >= mean((rating) + mad(rating))
        & votes >= ((mean(votes) + mad(votes))
                   )) %>%
    arrange(desc(votes))

# Wybiera takie powyzej ratingu sr+odch i powyzej glosów sr+odch, a nastepnie porzadkuje wg glosow
# BAWIE SIE NIESAMOWICIE
# Czemu nie bylam taka madra jak sb to robilam











# Podobnie możesz zrobić w 5-5, ale żeby było ich nie za dużo to użyj 10 odchylen wtedy bede tylko te naaaaprawde dlugasne


#5-5
filter(movies, Drama == 1, length >= (mean(length) + 10*mad(length))) %>% 
  arrange(desc(rating)) 
  
 #ta funkcja która usuwa dane ktorych nie ma to na.rm=FALSE
 
 
   
  
