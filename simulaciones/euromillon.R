# Librerias
library(tidyverse)

# Fijamos semilla 
set.seed(1234)

# Probabilidad de ganar el Euromillon 
p <- 1/75000000

# Intentos de vidas. Un intento diario por 50 anios. 
(50 * 365)

# Hacemos una funcion de vidas
vidas <- function(x){
    # Probabilidad 
    intentos <- rbinom(n = x, size = 1, prob = p)
    # Cuantas veces me gan'e el Euromillon! 
    abs(table(intentos)[[1]] - x)
}

# Replicamos para 10,000 personas 
replicate(n = 10000, vidas(x = (50 * 365))) %>% table()

# Como podemos ver, solo una persona, entre 10,000 personas intentando durante 50 anios, 
# Gana el premio de 1M del Euromillion. 

# Ganancia en porcentaje durante estos 50 anios. 
## Suponiendo un costo de 5 euros el ticket. 
(((50 * 365) * 10000) * 5 - 1000000)/1000000

# Se tiene una ganancia del 911 %
