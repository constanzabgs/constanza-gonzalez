ruta = file.choose()
datos_2011 = rio::import(ruta) #base 2011

library(tidyverse)

ggplot(datos_2011) +
  aes(x = Causas, weight = Defunciones, colour=Defunciones) +
  geom_bar(fill = "#C77979") +
  labs(
    x = "Causas",
    y = "Cantidad de Defunciones",
    title = "Causas de Mortalidad Materna",
    subtitle = "Chile 2011"
  ) +
  coord_flip() +
  theme_light()

ruta2 = file.choose()
datos_2012 = rio::import(ruta2) #base 2012


ggplot(datos_2012) +
  aes(x = Causas, weight = Defunciones, colour=Defunciones) +
  geom_bar(fill = "darkorchid1") +
  labs(
    x = "Causas",
    y = "Cantidad de Defunciones",
    title = "Causas de Mortalidad Materna",
    subtitle = "Chile 2012"
  ) +
  coord_flip() +
  theme_light()

ruta3 = file.choose()
datos_2013 = rio::import(ruta3) #base 2013


ggplot(datos_2013) +
  aes(x = Causas, weight = Defunciones, colour=Defunciones) +
  geom_bar(fill = "gray58") +
  labs(
    x = "Causas",
    y = "Cantidad de Defunciones",
    title = "Causas de Mortalidad Materna",
    subtitle = "Chile 2013"
  ) +
  coord_flip() +
  theme_light()

ruta4 = file.choose()
datos_2014 = rio::import(ruta4) #base 2014


ggplot(datos_2014) +
  aes(x = Causas, weight = Defunciones, colour=Defunciones) +
  geom_bar(fill = "lightsalmon2") +
  labs(
    x = "Causas",
    y = "Cantidad de Defunciones",
    title = "Causas de Mortalidad Materna",
    subtitle = "Chile 2014"
  ) +
  coord_flip() +
  theme_light()
