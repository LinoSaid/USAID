
# La primera vez que se ejecuta el código, es relevante instalar los paquetes
# install.packages("devtools")
#devtools::install_github("agstn/dataxray")
#devtools::install_github("sicarul/xray")


#Si te marca error en la instalación intenta correr primero las siguentes lineas:
#Sys.getenv("GITHUB_PAT")
#Sys.unsetenv("GITHUB_PAT")


library(tidyverse)
library(dataxray)
library(xray)

# Directorio debe ser sustituido por la ubicación del archivo con base en la computadora de cada usuario

# Nombre.csv es la base de datos que se va a documentar
delitos <- read.csv("https://raw.githubusercontent.com/CristinaA-Venzor/CURSO_BASE_ANALISIS_CRIMINAL/main/Bases%20de%20datos/carpetas_2023.csv")

delitos %>%
  make_xray() %>%
  view_xray() # Genero y visualizo mi xray donde se podran observar datos estadidisticos (medidas de tendencia central), sus respectivas graficas e informacion sobre el tipo de datos con que estoy trabajando

# Información por columna
tabla <- xray::anomalies(delitos)$variables
colnames(tabla) <- c("variable", "conteo", "conteo_NA", "porcentaje_NA", "conteo_cero", "porcentaje_cero", "conteo_blanco", "porcentaje_blanco", "cuenta_inf", "porcentaje_inf", "porcentaje_distintos", "tipo", "porcentaje_anomalias" )
View(tabla)

# Visualiza la descrpipción de cada variable
# Replica este script con la base de datos indicada
# expande la visualizaición y analiza:
  #1. ¿Para que es útil tener esta información?
  #2. ¿Cómo sirve este comando para la Política de Gestión, Validación y Limpieza de datos?


# Suba aquí su ejercicio
#https://forms.gle/Kov3Re1YjcMeiBSF6
