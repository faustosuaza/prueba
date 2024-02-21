## Fausto Andres Suaza Duarte
## 14 de febrero de 2024
## Cuarta clase

rm(list=ls())

require(pacman)
p_load(rio,skimr,janitor)
# nos dice cuál es el directorio donde esta guardando R sus documentos
getwd()
list.files()
# en la consola si pones "" y dentro usas tab te muestra que hay ahi
# si pones .../ le estas diciendo que vaya una carpeta mas atras
setwd("~/Escritorio/Universidad/Doctorado/Segundo Año/Cuarto Semestre/Taller R/clase-04-main/clase-04-main")
# getwd()
# puedes poner el directorio manualmente desde files. lo buscas y le dices que te lo establezca como directorio predeterminado
# setwd("~/Escritorio/Universidad/Doctorado/Segundo Año/Cuarto Semestre/Taller R")
## import permite leer varias extensiones de datos y tambien exporta en todos estos formatos
# siempre especifica el file
data <- import("input/poblacion magdalena.rds")
## Para evitar que tengamos que cambiar el directorio cada vez que cambiamos de computador, creamos un directorio en R
## Nunca se sobreescriben las bases de datos originales. Regla número uno del programador. 
## Los dejas en el input y lo demas lo pones en formato output

## Para crear un poryecto puedes generarlo en una carpeta que no existe, en una que existe o en un control para que quede en github. 
## Si quieres descargar la base de datos directamente desde internet usas el punto de conexión API. Maximo lee 1000 filas
da <- import("https://www.datos.gov.co/resource/8i28-jmz6.json")
## Describir una base de datos
head(da)
tail(da)
str(da)
skim(data)
# complete_rate: cuantas filas tienen informacion
# max: numero maximo de caracteres
# min: numero minimo de caracteres
# n_unique: te indica cuales son los valores unicos de esa variable
# R en formato rds guarda las observaciones por su numero de caracteres, no crea una sola categoria para todos

## Para exportarlo, la funcion export tiene dos argumentos obligatorios

export(x = da, file = "output/arboles.rds")


## Importar multiples archivos
## importar una lista

archivos <- list.files("input", full.names = T)

lista <- import_list(file = archivos)
lista[[3]]$municipio
