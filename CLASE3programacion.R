#vamos a hacer programaci?n en Rstudio#
#hay dostipos de programaci?n: imperativa y funcional#
#La programaci?n imperativa es aquella en la que el estado de un programa,
#definido por el valor de sus variables, se modifica mediante la ejecuci?n de
#comandos. El ?nfasis recae, adem?s, en c?mo se modifica el estado del programa
#y es frecuente el uso de bucles y expresiones condicionales.
#Es el tipo de programaci?n a la que est?n acostumbrados los programadores
#en C, BASIC, mucho de C++, Python o Java, o MatLab.
#creemos una funcion sencilla que se ejecuta reiteradamente
cuadrado=function(x){return(x^2)}# fijese que dentro de los corchetes esta el bloque de
#codigo que es un conjunto de lineas que se ejecutan secuencialmente#
cuadrado(5)#llamar la funcion
potencia=function(x,exponente=2) {x^exponente}#otra forma de escribirla y esta en R por defecto
potencia(4)
potencia(3,2)
potencia(3)
potencia(3, exponente=3)#varias formas de usar una funcion por defecto
xln=function(x){-x*log(x)}#genera una nueva funcion#
x=1:1000/1000 #genera una lista de 0 a 1#
plot(x, xln(x))# grafica en puntos#
plot(x, xln(x), type="l") #grafica en linea#

yrecta=function(x){2*x+3}
yrecta(3)
y=1:10
y
plot(y,yrecta(y))
plot(y,yrecta(y), type="l")

#en la programacion imperativa es habitual el uso del bucle for
mi.factorial <- function(n)
{
factorial <- 1
for (i in 1:n){ #expresi?n que se repite#
factorial <- factorial * i
}
return(factorial)
}
factorial(4)


#los blucles poco se usan ya que R los trae por defecto o usa vectores#
x=1:5 #un vector
sqrt(x)#caclula la raiz cuadrada del vector
sum(x)#suma los numeros
#esta seria la forma de hacerlo con bucles explicitos"
x <- 1:5
suma.x <- 0
for (i in x){
  suma.x <- suma.x + i
}
suma.x
#La programaci?n funcional, en un sentido amplio, es aquella en que 
#determinadas funciones admiten otras como argumento. Veamos
cuadradoext = function(x) if(x < 5) x^2 else -x^2
sapply(1:10, cuadradoext)
sum(sqrt(1:2))
#La funci?n tapply aplica (de ah? parte de su nombre) una funci?n
#a un vector en los subvectores que define otro vector m?scara:
iris
tapply(iris$Petal.Length, iris$Species, mean)
? tapply

#usemos el filter
x <- 1:20
x
x[x %% 3 == 2]
Filter(function(i) i %%3 == 0, x)
