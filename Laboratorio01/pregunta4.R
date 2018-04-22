#Nombre : Jean Alvitres Palomino
#Codigo: 20142591c
#El codigo muestra el desarrollo de la pregunta 4
#definiendo objetos de manera implicita y explicita,
#tambien haciendo uso de la coercion de vectores.

#Pregunta 4 seccion a
f1 <- array(data=1:36,dim=c(3,3,4)) #explicita
f1

bar <- as.vector(f1) #implicita
bar

baz <- as.character(bar) #implicita
baz

qux <- as.factor(baz) #implicita
qux

quux <- bar+c(-0.1,0.1) #implicita
quux


#Pregunta 4 seccion b

x1 <- is.numeric(f1)+is.integer(f1) #suma de la coercion del vector f1 a numeric e integer
x1 #mostrar el resultado

x2 <- is.numeric(bar)+is.integer(bar) #suma de la coercion del vector bar a numeric e integer
x2 #mostrar el resultado

x3 <- is.numeric(baz)+is.integer(baz) #suma de la coercion del vector baz a numeric e integer
x3 #mostrar el resultado

x4 <- is.numeric(qux)+is.integer(qux) #suma de la coercion del vector qux a numeric e integer
x4 #mostrar el resultado

x5 <- is.numeric(quux)+is.integer(quux) #suma de la coercion del vector quux a numeric e integer
x5 #mostrar el resultado

resultado <- c(x1,x2,x3,x4,x5) #se forma un vector(resultado) con la suma de coerciones
  #de los vectores f1,bar,baz,qux,quux

resultado #mostramos el vector

resultado.factor <- factor(resultado,levels=c(0,1,2)) #convertimos el resultado a factor con levels 0,1,2
resultado.factor #mostramos resultado.factor

as.numeric(resultado.factor) #coercion numerico del factor resultado 


#pregunta 4 seccion c
z <- c(34,23,33,42,41,0,1,1,0,0,1,2," ",1,2) #creamos el vector z
z1 <- matrix(z,nrow=5) #almacenamos los elementos de el vector z en una matriz (z1)
z1 #mostramos la matriz z1

frame <- as.data.frame(z1) #coercemos en un dataframe la matriz z1
frame #mostramos el dataframe

as.logical(frame[,2]) #coercemos a logico la columna 2 del dataframe

as.factor(frame[,3]) #coercemos a factor la columna 3 del dataframe



