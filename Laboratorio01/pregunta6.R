#Nombre : Jean Alvitres Palomino
#Codigo: 20142591c
#El codigo muestra el desarrollo de la pregunta 6
#se accede a el dataframe queakes y se selecciona alguno de sus registros
#tambien se accede a el dataframe Duncan y se grafica 

#pregunta 6 seccion a

a <- quakes[] #almacenamos el dataframe quakes en a

mag <- a[,4] #almacenamos la columna 4 de el dataframe quakes que corresponde a magnitud

nmag <- mag[mag>=5] #almacenamos en nmag las magnitudes mayores o igual a 5

write.table(nmag,"C:/Users/admin/Desktop/GitHub/q5.txt") #guardamos en el disco nmag

q5.dframe <- read.table("C:/Users/admin/Desktop/GitHub/q5.txt") #leemos del disco el dataframe guardado
  #anteriormente y lo almacenamos en q5.dataframe

q5.dframe #mostramos el dataframe

#pregunta 6 seccion b


Duncan <- carData::Duncan #almacenamos el dataframe Duncan en Duncan
prestige <- Duncan[,4] #almacenamos en prestige la columna 4 del dataframe Duncan
Income <- Duncan[,2] #almacenamos en Income la columna 2 del dataframe Duncan
Education <- Duncan[,3] #almacenamos en Education la columna 3 del dataframe Duncan

#graficamos Education vs Income

plot.new() #se produce un nuevo diagrama, lo cual genera una ventana grafica
  #si no hay ninguna abierta, en caso contrario se prepara una ventana existente.

plot.window(range(0:100),range(0:100)) #configura el sistema-
  #de coordenadas de la ventana grafica creada anteriormente
  #range(0:100): nos da el tamaño de la ventana en el eje X
  #range(0:100) : nos da el tamaño de la ventana en el eje Y
box() #crea un cuadro contenedor alrededor del grafico
axis(1) # crea los valores de la seccion horizontal(0-100), 1: coloca en la parte baja vertical
axis(2) # crea los valores de la seccion vertical(0-100), 2: coloca a la izquierda de la parte horizontal
points(Income[prestige>80],Education[prestige>80],pch=16)  #pone los puntos en el grafico
  #Income[prestige>80]: solo toma aquellos datos donde prestige es > 80 
  #Education[prestige>80]: solo toma aquellos datos donde prestige es > 80
  #y el par ordenado de ambos se coloca en la grafica
  #pch=16: da el estilo relleno de negro al punto en la grafica

points(Income[prestige<=80],Education[prestige<=80]) #lo mismo que el anterior item -
  #solo que este no lleva pch dado que llevara los puntos por defecto

legend("topleft", legend=c("prestige>80", "prestige<80"),
       col=c("black", "black"), pch = c(16,1), cex=0.9) #genera una leyenda en el grafico
    #"topleft": coloca la leyenda al lado superior izquierdo del grafico
    #legend=c("prestige>80", "prestige<80"): son los items de la leyenda
    #col=c("black", "black"): color de los puntos de leyenda
    #pch = c(16,1):estilo de los puntos de leyenda
    #cex=0.9: escala de tamaño de leyenda
  

mtext("Education",side = 1,line = 3) #crea un titulo horizontal
mtext("Income",side = 2,line = 3) #crea un titulo vertical
mtext("Education vs Income",side=3, line=1, font=2) # crea el titulo principal de la ventana grafica

dev.copy(png,filename="C:/Users/admin/Desktop/GitHub/plot.png",width=500,height=500); #guarda como una foto.png-
    #el grafico anteriormente generado
dev.off (); #guarda con exito


# pregunta6 seccion c  -- preguntar al profesor por slack

exer <- list(quakes,q5.dframe,Duncan)  #se genera la lista exer

write.table(unlist(exer),"C:/Users/admin/Desktop/GitHub/Ejercicio_df.txt") #se guarda en disco como dataframe

