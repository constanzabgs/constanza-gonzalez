ruta = file.choose()
datos_2011 = rio::import(ruta) #base 2011
View(datos_2011)
require(tidyverse)
require(scales)
require(ggthemes)

datos_2011 %>% 
  ggplot()+
  aes(x=reorder(Causas, Defunciones), y = Defunciones, label=Defunciones) +
  geom_bar(fill = "#C77979", stat="identity") +
  scale_y_continuous(limits = c(0, 15), breaks = seq(0, 15, by =1))+
  labs(
    x = "",
    y = "Cantidad de Defunciones",
    title = "Causas de Mortalidad Materna",
    subtitle = "Chile 2011"
  ) + geom_text(hjust= 0, nudge_y =0.5)+
  coord_flip() +
  theme_light()+
  theme(text = element_text(size=8))


ruta2 = file.choose()
datos_2012 = rio::import(ruta2) #base 2012

datos_2012 %>% 
  ggplot()+
  aes(x=reorder(Causas, Defunciones), y = Defunciones, label=Defunciones) +
  geom_bar(fill = "#C77979", stat="identity") +
  scale_y_continuous(limits = c(0, 15), breaks = seq(0, 15, by =1))+
  labs(
    x = ""
    y = "Cantidad de Defunciones",
    title = "Causas de Mortalidad Materna",
    subtitle = "Chile 2012"
  ) + geom_text(hjust= 0, nudge_y =0.5)+
  coord_flip() +
  theme_light()+
  theme(text = element_text(size=8))

ruta3 = file.choose()
datos_2013 = rio::import(ruta3) #base 2013

datos_2013 %>% 
  ggplot()+
  aes(x=reorder(Causas, Defunciones), y = Defunciones, label=Defunciones) +
  geom_bar(fill = "#C77979", stat="identity") +
  scale_y_continuous(limits = c(0, 15), breaks = seq(0, 15, by =1))+
  labs(
    x=""
    y = "Cantidad de Defunciones",
    title = "Causas de Mortalidad Materna",
    subtitle = "Chile 2013"
  ) + geom_text(hjust= 0, nudge_y =0.5)+
  coord_flip() +
  theme_light()+
  theme(text = element_text(size=8))

ruta4 = file.choose()
datos_2014 = rio::import(ruta4) #base 2014

datos_2014 %>% 
  ggplot()+
  aes(x=reorder(Causas, Defunciones), y = Defunciones, label=Defunciones) +
  geom_bar(fill = "#C77979", stat="identity") +
  scale_y_continuous(limits = c(0, 15), breaks = seq(0, 15, by =1))+
  labs(
    x=""
    y = "Cantidad de Defunciones",
    title = "Causas de Mortalidad Materna",
    subtitle = "Chile 2014"
  ) + geom_text(hjust= 0, nudge_y =0.5)+
  coord_flip() +
  theme_light()+
  theme(text = element_text(size=8))



# grafico final -----------------------------------------------------------


EPT_2011 = 14
EPT_2012 = 10 
EPT_2013 = 11
EPT_2014 = 5

CCO_2011 = 6
CCO_2012 = 12 
CCO_2013 = 15
CCO_2014 = 22

MOI_2011 = 12
MOI_2012 = 16 
MOI_2013 = 16
MOI_2014 = 14

Var_EPT = c(EPT_2011,EPT_2012,EPT_2013,EPT_2014)
Var_CCO = c(CCO_2011,CCO_2012,CCO_2013,CCO_2014)
Var_MOI = c(MOI_2011,MOI_2012,MOI_2013,MOI_2014)

EPT = c("EPT","EPT","EPT","EPT")
CCO = c("CCO","CCO","CCO","CCO")
MOI = c("MOI","MOI","MOI","MOI")

Var_EPT = cbind(EPT,Var_EPT,c("2011","2012","2013","2014"))
Var_CCO = cbind(CCO,Var_CCO,c("2011","2012","2013","2014"))
Var_MOI = cbind(MOI,Var_MOI,c("2011","2012","2013","2014"))

Var = as.data.frame(rbind(Var_EPT,Var_CCO,Var_MOI))

Var %>% 
  ggplot() +
  aes(x = EPT, y = as.numeric(reorder(Var_EPT, Var_EPT, function(x)+length(x))), fill=V3)+
  geom_bar(stat = "identity")+
  labs(title = "Causas con mayor cantidad de defunciones",
       y = "",
       x = "")
