## Fausto Suaza
## 07/02/2024

## Configuración inicial

rm(list=ls())
install.packages('pacman')
require(pacman)

# pacman tiene una función que se llama p_load()

p_load(datasets,tibble) # combina las líneas 7 y 8. LLama la función y si no la encuentra en el disco duro, la installa automáticamente

## Tercera Clase 

## un elemento entre comillas "" se toma como una palabra

## is.numeric() Me dice si es un número o una cadena de caracteres

is.numeric(10)
is.numeric("10")

## as.

as.numeric("10") # elimina las comillas y lo convierte en un número
as.numeric("10a") # como contiene un caracter, no lo convierte en número

as.character(10) # convierte el número en una cadena de caracteres

##== 1. Vectores ==##

## Generar un vector

v_1_5 <- c(1,2,3,4,5) # en el environment entre llaves nos informa el largo del vector
n_10 <- rnorm(10)
v100 <- seq(1,100,2) # para generar sucesiones usa seq()
    # para números impares prueba con v_1_100 <- seq(1,100,2)
10:15 # genera un vector entre el primer y el último elemento separando de a un elemento

## homogéneos

v2 <- c(10,"10") # nota que como los vectores solo pueden almancenar un tipo de dato, lo convierte todo en cadena de caracteres
as.numeric(v2) # convierte los caracteres en números
vna <- c(NA,"10") # R respeta la combinación de caracteres y lógicos o de lógicos y caracteres
0/0 # arroja un NaN o elemento no determinado

## acceder

v100[20] # accedes al elemento 20 del vector v100
v100[30:35]
v35 <- v100[30:35]

##== 2. Matriz ==##

## Cómo generar una matriz

m1 <- matrix(data = 1:9, 
             nrow = 3, 
             ncol = 3) # en R podemos seguir la función que creamos con todos los espacios que queremos
                       # para organizar por columna usas byrow=TRUE
## 

m1[1,3] # en matrices si solo específicamos m1[1] el cuenta espacios como si fuera un vector

abc <- letters
grep(pattern = "n", x = abc) # esta función nos permite encontrar elementos dentro de un vector
abc[14]
m1[m1==4] # nos indica dónde está guardado ese elemento

##== 3. Dataframe ==##

##

df <- mtcars
is.data.frame(df)
View(df)
dim(df) # esta función devuelve en el primer elemento el número de filas y en el segundo las columnas
df[,1] # muestra todos las filas en la primera columna 
colnames(df) # muestra el nombre de las columnas
nombres <- colnames(df)
rownames(df)