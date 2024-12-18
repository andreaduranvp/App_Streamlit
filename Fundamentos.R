#instalación de liberías
install.packages("ggplot2")
install.packages("readxl")

#importación de librerías
library(readxl)
library(ggplot2)

#Variables
x<-10
class(x)

y<-2.5
class(y)

nombre<-"andrea"
class(nombre)

lista<-list(1,2,3,4)
class(lista)

#Funciones
perimetro_triangulo<-function(lado1,lado2,lado3){
  resultado<-lado1+lado2+lado3
  return(resultado)
}

perimetro_triangulo(1,5,7)

temperatura <- c(20, 22, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36)
consumo <- c(150, 160, 165, 170, 175, 180, 185, 190, 195, 200, 210, 220, 230, 240, 250)


df<-data.frame(Temperatura = temperatura, Consumo = consumo)

str(df)
summary(df)