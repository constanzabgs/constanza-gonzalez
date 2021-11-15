ruta = file.choose()
datos_2011 = rio::import(ruta) #base 2011

library(tidyverse)

datos_2011 %>% 
  ggplot()+
  aes(x=reorder(Causas, Defunciones), weight = Defunciones) +
  geom_bar(fill = "#C77979") +
  scale_y_continuous(limits = c(0, 15), breaks = seq(0, 15, by =1))+
  labs(
    y = "Cantidad de Defunciones",
    title = "Causas de Mortalidad Materna",
    subtitle = "Chile 2011"
  ) +
  coord_flip() +
  theme_light()+
  theme(text = element_text(size=8))


ruta2 = file.choose()
datos_2012 = rio::import(ruta2) #base 2012

datos_2012 %>% 
  ggplot()+
  aes(x=reorder(Causas, Defunciones), weight = Defunciones) +
  geom_bar(fill = "darkorchid1") +
  scale_y_continuous(limits = c(0, 15), breaks = seq(0, 15, by =1))+
  labs(
    y = "Cantidad de Defunciones",
    title = "Causas de Mortalidad Materna",
    subtitle = "Chile 2012"
  ) +
  coord_flip() +
  theme_light()+
  theme(text = element_text(size=8))

ruta3 = file.choose()
datos_2013 = rio::import(ruta3) #base 2013

datos_2013 %>% 
  ggplot()+
  aes(x=reorder(Causas, Defunciones), weight = Defunciones) +
  geom_bar(fill = "gray58") +
  scale_y_continuous(limits = c(0, 15), breaks = seq(0, 15, by =1))+
  labs(
    y = "Cantidad de Defunciones",
    title = "Causas de Mortalidad Materna",
    subtitle = "Chile 2013"
  ) +
  coord_flip() +
  theme_light()+
  theme(text = element_text(size=8))

ruta4 = file.choose()
datos_2014 = rio::import(ruta4) #base 2014

datos_2014 %>% 
  ggplot()+
  aes(x=reorder(Causas, Defunciones), weight = Defunciones) +
  geom_bar(fill = "lightsalmon2") +
  scale_y_continuous(limits = c(0, 15), breaks = seq(0, 15, by =1))+
  labs(
    y = "Cantidad de Defunciones",
    title = "Causas de Mortalidad Materna",
    subtitle = "Chile 2014"
  ) +
  coord_flip() +
  theme_light()+
  theme(text = element_text(size=8))