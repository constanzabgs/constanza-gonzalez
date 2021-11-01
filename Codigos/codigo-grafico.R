ruta = file.choose()
datos = rio::import(ruta)
View(datos)
library(tidyverse)
ggplot(datos) +
  aes(x = Causas, weight = Defunciones) +
  geom_bar(fill = "#C474AF") +
  labs(
    x = "Causas",
    y = "Cantidad de Defunciones",
    title = "Causas de Mortalidad Materna en Chile 2012"
  ) +
  coord_flip() +
  theme_gray()
