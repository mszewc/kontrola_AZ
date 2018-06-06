

library(tidyverse)

movies

# zad5-2

filter(movies, year == 2005, Comedy == 1 )

# zad5-3

budzetowosc <-  movies %>% 
     select(title, year, budget) %>%
     arrange(desc(budget))

# zad5-4
# Uzna³am, ¿e rating > 7 oznacza dobry film.

best_animations <- movies %>%
  filter(Animation == 1, year >= 1990 & year < 2000, votes >= (mean(votes)) , rating > 7) %>%
  arrange(desc(rating)) %>% 
  select(title,year,rating)
 

# zad5-5
# Tu bym chcia³a po prostu wyœwietliæ 10 pierwszych a nie umiem. 
# Nie da siê tego zrobiæ selectem, bo to pokazuje zmienne, a nie obserwacje
# trzeba by by³o wzi¹æ liczbê porz¹dkow¹ i j¹ zrobiæ w filter n < 10 (but how?)
# ale tak ¿eby to by³o na koñcu


dramatyczne_dramaty <- movies %>%
  filter(Drama == 1, length >= (mean(length))) %>%
  select(title, length, year) %>%
  arrange(desc(length))


# zad5-6

#Czy tu siê da wywaliæ to NA z kategorii mpaa ? Chcia³abym

kategorie_mpaa <- movies %>%
 select(rating, mpaa) %>%
  group_by(mpaa) %>%
  summarise( rating_mean = mean(rating, na.rm = T), rating_mad = mad(rating, na.rm = T))
  
  

  

  
  
  
