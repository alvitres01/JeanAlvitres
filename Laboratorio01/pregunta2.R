#Nombre : Jean Alvitres Palomino
#Codigo: 20142591c
#El codigo muestra el desarrollo de la pregunta 2
#haciendo uso matrices manipulando filas y columnas.
#Tambien haciendo uso de la matriz inversa.

#pregunta 2 seccion a

x <- c(4.3,3.1,8.2,8.2,3.2,0.9,1.6,6.5) #almacenamos el vector c en "X"
y <- matrix(x,4,2,byrow=F) #colocamos los datos de "x" en la matriz
y #mostramos "y"

#pregunta 2 seccion b

dim(y[-c(4),]) #vemos la dimension de "y" al eliminar una fila (en este caso la 4)

#pregunta 2 seccion c

y[,2] <- sort(y[,2],decreasing=FALSE) #ordenamos los datos de la columna numero2 y lo modificamos en la matriz
y #mostramos la matriz

#pregunta 2 seccion d

matrix(y[-c(4),-c(1)]) #mostrar la matriz que se forma al quitar la columna 2 y la fila 4

x1 <- matrix(y[3,]) #tomamos la fila 3 y formamos 1 matriz
x2 <- matrix(y[4,]) #tomamos la fila 4 y formamos 1 matriz
z <- cbind(x1,x2) #unimos las dos filas en una matrix de 2 x 2 y lo almacenamos en z

#pregunta 2 seccion f

y[4,2] <- z[1,1]-1/2 #colocamos en [4,2] la diagonal de "z" -1/2
y[1,2] <- z[2,2]-1/2 #colocamos en [1,2] la diagonal de "z" -1/2
y[4,1] <- z[1,1]-1/2 #colocamos en [4,1] la diagonal de "z" -1/2
y[1,1] <- z[2,2]-1/2 #colocamos en [1,1] la diagonal de "z" -1/2
y #mostramos el resultado

#pregunta 3 seccion g

A <- diag(c(2,3,5,-1)) #matriz A
I <- diag(1,nrow=4) #matriz identidad
B <- solve(A,I) #matriz inversa de A

p <- A*B-I #operaciones de matrices
p #imprimimos el resultado



