#### KODUJ ZAWSZE NA UTF-8 bo ci się będą krzaczyć (NIE MA TAKIEGO SŁOWA) polskie znaki

library(tidyverse)

movies

# zad5-2

filter(movies, year == 2005, Comedy == 1 )

# zad5-3
#AZ:
#budzetowosc <-  movies %>% # PO CO?
#Tak w zupełności wystarczy:

     select(movies, title, year, budget) %>%
     arrange(desc(budget))


# zad5-4
# Uznażam, że rating > 7 oznacza dobry film. 
#AZ: PANI SPECJALISTA CO NIE WIDZIAŁA GIRL. INTERRUPTED XD

# best_animations <- movies %>% #AZ: PO CO AGAIN
# TO JEST SUPER ROZWIĄZANIE <3
  filter(movies, Animation == 1, year >= 1990 & year < 2000, votes >= (mean(votes)) , rating > 7) %>%
  arrange(desc(rating)) %>% 
  select(title, year, rating)

 

# zad5-5
# Tu bym chciała po prostu wyświetlić 10 pierwszych a nie umiem. 
# Nie da się tego zrobiæ selectem, bo to pokazuje zmienne, a nie obserwacje
# trzeba by było wziąć liczbę porządkową i ją zrobię w filter n < 10 (but how?)
# ale tak żeby to było na końcu
#top_n zapamietaj sb te funkcje


# dramatyczne_dramaty <- movies %>% # LASKA PO CO TY TWORZYSZ TE NOWE ZMIENNE, WYJEB TO
  filter(movies, Drama == 1, length >= (mean(length))) %>%
  select(title, length, year) %>%
  arrange(desc(length)) %>%
  top_n(10)

#AZ: Jest po prostu taka funkcja, opłacało się przeczytac R4ds

# zad5-6

#Czy tu się da wywalćæ to NA z kategorii mpaa ? Chciałabym
#AZ: Ja bym to zrobiła najprościej tak:

#kategorie_mpaa <- movies %>% 
 select(movies, rating, mpaa) %>%
  filter (mpaa != "NA") %>%
  group_by(mpaa) %>%
  summarise( rating_mean = mean(rating, na.rm = ), rating_mad = mad(rating, na.rm = T))
  
  

  

  
  
  
