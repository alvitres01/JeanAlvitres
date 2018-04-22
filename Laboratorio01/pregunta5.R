#Nombre : Jean Alvitres Palomino
#Codigo: 20142591c
#El codigo muestra el desarrollo de la pregunta 5
#en la se describe las instrucciones del codigo, asi tambien
#se ve otra manera de desarrollar el mismo grafico haciendo uso del sistema grafico
#primitivas grid.

#Pregunta 5  seccion a

plot.new() #se produce un nuevo diagrama, lo cual genera una ventana grafica
  #si no hay ninguna abierta, en caso contrario se prepara una ventana existente.

plot.window(range(pressure$temperature),range(pressure$pressure)) #configura el sistema-
  #de coordenadas de la ventana grafica creada anteriormente
  #range(pressure$temperature): nos da el tamaño de la ventana en el eje X
  #,range(pressure$pressure) : nos da el tamaño de la ventana en el eje Y

box() #crea un cuadro contenedor alrededor del grafico
axis(1) # crea los valores de la seccion horizontal(0-350), 1: coloca en la parte baja vertical
axis(2) # crea los valores de la seccion vertical(0-800), 2: coloca a la izquierda de la parte horizontal
points(pressure$temperature,pressure$pressure) #pone los puntos en el grafico
  #pressure$temperature: solo toma aquellos datos contenidos en temperature
  #pressure$pressure: solo toma aquellos datos contenidos en pressure
  #y el par ordenado de ambos se coloca en la grafica
  
  

mtext("temperatura",side = 1,line = 3) #crea un titulo horizontal
mtext("presion",side = 2,line = 3) #crea un titulo vertical
mtext("Presion de vapor de Mercurio\ncomo una funcion de la Temperatura",
      side=3, line=1, font=2) # crea el titulo principal de la ventana grafica


