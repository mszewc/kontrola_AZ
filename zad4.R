library(tidyverse)
mpg

# zad4-2
# Odwróciłam zależność, bo wydaje mi się bardziej sensowna. Jeśli dobrze rozumiem legende do tego zbioru
# to pojemność silnika jest podana w litrach, a spalanie w milach na galon, co jest dziwne.
# Co prawda nie znam się za bardzo na silnikach i spalaniu. Mam nadzieję, że się Pan nie obrazi.
# AZ: Rzeczywiście tak jest ale nie ma to żadnego znaczenia XD Chodzi tylko o to, że im większa pojemność silnika tym (najczęściej)
# AZ: Więcej się spala paliwka. Nie ma to żadnego związku czy to litry czy nie.
# AZ: Np. w Ameryce mają silniki 3.0 i to jest mało, a lupo lidki ma 1.0 więc wiesz.

ggplot(data = mpg ) +
  geom_point(mapping = aes(x = displ, y = cty, color = "red")) +
  labs( 
    title = "zależność spalania w mieście od pojemności silnika",
    x = "pojemność silinika [litr]", y = "spalanie w mieście [mila/galon]")

#dodaję Ci kolorek ponieważ lubię
  



# zad4-3


ggplot(data = mpg) +
  geom_bar(mapping = aes( x = class, fill = class)) +
  labs(
    title = "Ilość samochodów w poszczególnych klasach",
    x = "klasa samochodu", y = "ilość") +
  theme_classic(base_size = 7.9)



# zad4-5

ggplot(data = mpg, aes( x= class, y = displ, fill = class)) +
  geom_boxplot() +
  coord_flip() +
  labs(
    title = "Zależność pojemności silnika od klasy samochodu", 
    x = "klasa", y = "pojemność silnika [litr]") +
  theme_light(base_size = 9)
  


# zad4-4

# NIE DZIAŁA MI TOOOOO, CZEMU?! 
# WSZYSTKO W TYM ZADANIU PRZEPISAŁAM OD CIEBIE I WCIĄŻ MAM SZARO NA WYKRESIE!!!!!!!

#AZ: PROSZĘ NA MNIE NIE KRZYCZEĆ PANI MARIO

#AZ: Teraz jest dobrze:
-----
ggplot(data = mpg) +
  geom_histogram(mapping = aes(displ, fill = displ), bins = 10) + #10 bd lepiej
  labs(title = "Rozkład pojemności silnika samochodów", x = "klasa", y = "pojemność silnika") + #dodałabym jeszcze to
  theme_light()
-------


ggplot(data = mpg) +
  geom_histogram(mapping = aes(displ), binwidth = 20) # NA CHUJ TO?

#Najkochańsza - przepiękne pomniejszyłam font i wszystko jest pięknie, przekopiuj to jeszcze to Rstudio żeby zobaczyć czy działczy, jestem najdumniejsza moja Pani data science

