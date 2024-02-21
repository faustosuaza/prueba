## Un scrip es una vitácora del código que estamos escribiendo
## Las librerías o paquetes son conjunto de funciones que tienen un uso específico
## No todas las librerías son buenas. USa sólo las librerías más reconocidas.

sessionInfo() ## Información del R, que estamos usando

## stats     graphics  grDevices utils     datasets  methods   base 
## son las librerías por Default que carga R
## Para descargar el paquete necesitamos internet
## Para llamar el paquete no necesitamos internet. Ya está en nuestro equipo

## Para escribir un código, comencemos por escribir nuestro nombre y la fecha en la que lo redactamos

## Fausto Suaza
## Update: 31 de enero de 2024

## Initial Setup 

hist(rnorm(1000000,2,1)) # cuando un argumento tiene un igual mean = 0, sd = 1, 
                         # son parámetros que vienen definidos por default

# Consejo: no usar acentos, porque al saltar entre sistemas operativos, se corrompe el archivo
# no necesitas escribir el nombre del argumento (ejemplo mean = 2), siempre y cuando se respete
# el orden preestablecido por R

install.packages('rio') ## Para completar una función sugerida usamos tab

available.packages() # lista de los paquetes disponibles en el CRAN de R studio

# ? antes de una función (?available.packages()) le indica a R que necistamos ayuda. 
# Es como Help de stata

# En la pestaña packages de R (abajo a la derecha) nos informa cuáles librerías están ahora activas

# Para activar el paquete de R podemos usar library() o require() (require permite descargar la libreria sin depdendencias)

library(rio)

rm(list = ls()) ## clear all. Limpiamos todo el entorno

# Por qué es un lenguaje orientado a objetos?
# Todo lo que nosotros creemos lo pordemos convertir en un objeto.
# Todo lo que aparezca en la consola, se puede almacenar como un objeto 

## Asignar un objeto

data_1 <- rnorm(1000,0,1) # puedes usar tanto <- como = para asignar información a un objeto
data_2 = rnorm(1000,2,4) # normalmente usamos <- para evitar confusiones con los = dentro de las funciones

## otra forma de asignar un valor es con la función assign("variable", valor)

## al correrlo de nuevo, se sobreescriben los valores sobre los objetos

## en R a diferencia de Stata podemos abrir tantas bases de datos como queramos. 
## esto implica que, para alterar variables o objetos tenemos que especificar el objeto específico 
## que queramos modificar. Siempre tienes que identificar el objeto que quieres modificar

## en R puedo crear vectores, matríces, dataframes, listas y funciones. También hay otros, pero estos
## son los más útiles

## vectores almacenan información homogénea. Es decir o solo números, o solo letras, o solo valores lógicos.
## Las mactrices, al compilar vectores. Son también homogéneas
## Los Data frames son una especie matriz. Que nos permite combinar números, letras y demás. No necesariamente es homogéneo.
## las listas son uno de los ojetos más útiles de R. En el podemos almacenar distintos elementos. Por ejemplo, varios dataframes

## el environment categoriza los objetos. los vectres y las listas (una sola dimensión) se almacena en values
## cuando no conzco la clase del objeto, podemos usar la función class("var")

## nunca usar en nombres que combien mayúsculas o minúsculas. Sugerencias, use solo minúsculas

## Cómo gestionar el espacio de trabajo (environment)

## el espacio de trabajo almacena todo lo que nosotros usemos. Trabajar con tantos objetos puede ser dispendioso
## La función ls() genera un inventario del entorno.
## yo puedo eliminar elemntos particulares del entorno. Usamos la función rm("var")
## object.size("var") devuelve el peso del objeto.
