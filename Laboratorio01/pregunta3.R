#Nombre : Jean Alvitres Palomino
#Codigo: 20142591c
#El codigo muestra el desarrollo de la pregunta 3
#haciendo uso de vectores, factores y sus metodos tales como 
#combinar factores entre otros.


#Pregunta 3 seccion a

sexo <- c("F","M","M","M","F","F","F","M","M","M",
          "M","F","M","F","F","F","M","M","M","M") #creacion del vector sexo
sexo #mostrar el vector sexo
partido <- c("Laborista","Nacional","Nacional","Laborista",
             "Nacional","Verdes","Nacional","Nacional","Verdes",
             "Otros","Verdes","Laborista","Nacional","Nacional",
             "Laborista","Laborista","Nacional","Nacional","Laborista",
             "Otros") #creacion del vector partido

partido #mostrar el vector partido

#Pregunta 3 seccion b

sexo.factor <- factor(sexo ,ordered = TRUE) #creacion del factor sexo
sexo.factor #mostrar el factor sexo
 
partido.factor <- factor(partido,ordered = TRUE) #creacion del factor partido
partido.factor #mostrar el factor partido

#Pregunta 3 seccion C

hombres.factor <- partido.factor[sexo.factor == "M"] #metodo para obtener el factor-
  #de los partidos elegidos solo por participantes hombres

Nacional.factor <- sexo.factor[partido.factor=="Nacional"] #metodo para obtener el -
  #factor de generos para quienes eligieron el partido Nacional"

hombres.factor #mostramos el factor Hombres
Nacional.factor #mostramos el factor Nacional

#Pregunta 3 seccion d
x1 <- c("Nacional","Maori","Laborista","Verdes","Laborista")#vector Partido adicional
x2 <- c("M","M","F","F","F","M")#vector sexo adicional

combinacion.partido <- factor(c(as.character(partido.factor),
                                as.character(x1)),ordered = TRUE) #se combina el-
  #factor partido con el vector X1 (partidos adicionales)"

combinacion.partido #mostramos el factor combinacion.partido

combinacion.sexo <- factor(c(as.character(sexo.factor),
                             as.character(x2)),ordered = TRUE) #se combina el-
  #factor sexo con el vector x2(Sexo adicional)

combinacion.sexo #mostramos el factor combinacion.sexo

niveles_confianza <- c(93,55,29,100,52,84,56,0,33,52,35,53,55,
                       46,40,56,45,64,31,10,29,40,95,18,61)#vector niveles de confianza

porcentaje_confianza <- c("alto","medio","bajo","alto","medio","alto","medio",
                          "bajo","medio","medio","medio","medio","medio","medio",
                          "medio","medio","medio","medio","medio","bajo","bajo",
                          "medio","alto","bajo","medio")#vector porcentaje de confianza

niveles_confianza.factor <- porcentaje_confianza[niveles_confianza<101]#factor niveles de confianza

niveles_confianza.factor #mostrar el factor niveles_confianza

Laboristas_confianza <- niveles_confianza.factor[combinacion.partido=="Laborista"] #niveles-
  #correspondiente a aquellos individuos originalmente que se identificaron como Laboristas

Laboristas_confianza #mostrar el factor laboristas_confianza

Nacional_confianza <- niveles_confianza.factor[combinacion.partido=="Nacional"] #niveles-
  #correspondiente a aquellos individuos originalmente que se identificaron como Nacional

Nacional_confianza#mostrar el factor Nacional_confianza
