library(tidyverse)
mpg

# zad4-2
# Odwróciłam zależność, bo wydaje mi się bardziej sensowna.Jeśli dobrze rozumiem legende do tego zbioru
# to pojemność silnika jest podana w litrach, a spalanie w milach na galon, co jest dziwne.
# Co prawda nie znam się za bardzo na silnikach i spalaniu. Mam nadzieję, że się Pan nie obrazi.

ggplot(data = mpg ) +
  geom_point(mapping = aes(x = displ, y = cty)) +
  labs( 
    title = "zależność spalania w mieście od pojemności silnika",
    x = "pojemność silinika [litr]", y = "spalanie w mieście [mila/galon]")
  



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

ggplot(data = mpg) +
  geom_histogram(mapping = aes(displ, fill = displ), bins = 12, binwidth = 20) +
  labs( title = "Rozkład pojemności silnika samochodów", x = "klasa", y = "pojemność silnika") +
  theme_linedraw(base_size = 9)
