#Nombre : Jean Alvitres Palomino
#Codigo: 20142591c
#El codigo muestra el desarrollo de la pregunta 1
#haciendo uso de secuencias, vectores y funciones las cuales
#nos permiten invertir , ordenar vectores.




#pregunta 1 seccion a
x <- seq(5,-11,by=-0.3) #se almacena la secuencia en X
x #mostrar el valor de x

#pregunta 1 seccion b

x <- rev(x) #invierte la secuencia y almacena en x
x  #mostrar el valor de x

#pregunta 1 seccion c

y <- rep( c(-1,3,-5,7,-9),each=10,times = 2) #se almacena la secuencia en y
y #mostrar el valor de y
sort(y,decreasing=TRUE) #visualiza la secuencia de mayor a menor;

#pregunta 1 seccion d

x1 <- seq(6,12) #se almacena en x1 la secuencia del 6 al 12
x2 <- rep(5.3,3) #se almacena en x2 la repeticion de 5.3 3 veces
x3 <- -3 #se almacena -3 en x3
y1 <- length(c(-1,3,-5,7,-9)) #se almacena la longitud de el vector c en y1
y2 <- paste(102,y1,sep="") #se almacena la union de 102 con la longitud de el vector c en y2
x4 <- rep(y2,9) # se almacena la repeticion de y2 en x4
y3 <- c(x1,x2,x3,x4) # se almacena el vector C en y3
length(y3) #se imprime la longitud de el vector C





           