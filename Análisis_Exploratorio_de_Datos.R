
# *******Ejercicio 1: Exploración inicial del dataset*********

install.packages("readr")  # Instalar el paquete readr
library(readr)  # Cargar el paquete readr

# 1. Carga el dataset proporcionado .
data <- read_csv("C:/Users/Andrea/Desktop/prueba/jobs_in_data_science.csv")

# 2. Analisis 

#Número de filas y columnas.
 dimensiones <- dim(data)
# Imprimir el número de filas y columnas
num_filas <- dimensiones[1]
num_columnas <- dimensiones[2]
cat("Número de filas:", num_filas, "\n")
cat("Número de columnas:", num_columnas, "\n")


# Tipos de datos de cada columna
tipos_de_datos <- sapply(data, class)
# Imprimir los tipos de datos
print(tipos_de_datos)


# *******Ejercicio 2: Estadísticas descriptivas*********
#1. Calcular las estadísticas descriptivas para las columnas salary y salary_in_usd.
# estadísticas descriptivas para la columna salary
summary(data$salary)

# estadísticas descriptivas para la columna salary_in_usd
summary(data$salary_in_usd)

#2. Analizar
# Salario promedio, mediana, mínimo y máximo.
# Calcular estadísticas para la columna salary
salario_promedio <- mean(data$salary, na.rm = TRUE)
salario_mediana <- median(data$salary, na.rm = TRUE)
salario_minimo <- min(data$salary, na.rm = TRUE)
salario_maximo <- max(data$salary, na.rm = TRUE)
# Calcular estadísticas para la columna salary_in_usd
salario_usd_promedio <- mean(data$salary_in_usd, na.rm = TRUE)
salario_usd_mediana <- median(data$salary_in_usd, na.rm = TRUE)
salario_usd_minimo <- min(data$salary_in_usd, na.rm = TRUE)
salario_usd_maximo <- max(data$salary_in_usd, na.rm = TRUE)
# Imprimir los resultados
cat("Estadísticas para la columna 'salary':\n")
cat("Salario promedio:", salario_promedio, "\n")
cat("Mediana del salario:", salario_mediana, "\n")
cat("Salario mínimo:", salario_minimo, "\n")
cat("Salario máximo:", salario_maximo, "\n\n")
#
cat("Estadísticas para la columna 'salary_in_usd':\n")
cat("Salario promedio en USD:", salario_usd_promedio, "\n")
cat("Mediana del salario en USD:", salario_usd_mediana, "\n")
cat("Salario mínimo en USD:", salario_usd_minimo, "\n")
cat("Salario máximo en USD:", salario_usd_maximo, "\n")





# Desviación estándar y rango salarial

# Calcular la desviación estándar para la columna salary
desviacion_estandar_salary <- sd(data$salary, na.rm = TRUE)

# Calcular la desviación estándar para la columna salary_in_usd
desviacion_estandar_salary_usd <- sd(data$salary_in_usd, na.rm = TRUE)

# Calcular el rango salarial para la columna salary
rango_salary <- max(data$salary, na.rm = TRUE) - min(data$salary, na.rm = TRUE)

# Calcular el rango salarial para la columna salary_in_usd
rango_salary_usd <- max(data$salary_in_usd, na.rm = TRUE) - min(data$salary_in_usd, na.rm = TRUE)

# Imprimir los resultados
cat("Desviación estándar y rango para la columna 'salary':\n")
cat("Desviación estándar:", desviacion_estandar_salary, "\n")
cat("Rango salarial:", rango_salary, "\n\n")

cat("Desviación estándar y rango para la columna 'salary_in_usd':\n")
cat("Desviación estándar en USD:", desviacion_estandar_salary_usd, "\n")
cat("Rango salarial en USD:", rango_salary_usd, "\n")


# *******Ejercicio 3: EVisualización de datos*********
#Instalación de Bibliotecas (si no las tienes instaladas)
install.packages("ggplot2")
install.packages("readr")
#Cargar Bibliotecas
library(ggplot2)
library(readr)
#Cargar el Archivo CSV
data <- read_csv("C:/Users/Andrea/Desktop/prueba/jobs_in_data_science.csv")
#1. Genera los siguientes gráficos

#Un histograma de la distribución de salarios.
# Histograma para salary
ggplot(data, aes(x = salary)) +
  geom_histogram(binwidth = 10000, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Distribución de Salarios", x = "Salary", y = "Frecuencia") +
  theme_minimal()
# Histograma para salary_in_usd
ggplot(data, aes(x = salary_in_usd)) +
  geom_histogram(binwidth = 10000, fill = "green", color = "black", alpha = 0.7) +
  labs(title = "Distribución de Salarios en USD", x = "Salary in USD", y = "Frecuencia") +
  theme_minimal()

#Un gráfico de dispersión que relacione experience_level con salary_in_usd.
ggplot(data, aes(x = experience_level, y = salary_in_usd)) +
  geom_point(alpha = 0.6, color = "red") +
  labs(title = "Relación entre Experience Level y Salary in USD", 
       x = "Nivel de Experiencia", y = "Salario en USD") +
  theme_minimal()


# *******Ejercicio 4: Análisis de correlaciones *******
#1. Calcula la matriz de correlación entre las columnas numéricas.
# Seleccionar solo las columnas numéricas
numeric_data <- data %>%
  select(where(is.numeric))

# Calcular la matriz de correlación
correlation_matrix <- cor(numeric_data, use = "complete.obs")

# Imprimir la matriz de correlación
print(correlation_matrix)

#2. Visualiza la matriz de correlación utilizando un mapa de calor (heatmap).
# Instalación de Bibliotecas 
install.packages("ggplot2")
install.packages("reshape2")
install.packages("readr")
install.packages("dplyr")
#Cargar Bibliotecas
library(readr)    # Cargar readr para la función read_csv
library(dplyr)    # Cargar dplyr para seleccionar columnas numéricas
library(reshape2) # Cargar reshape2 para la función melt
library(ggplot2)  # Cargar ggplot2 para los gráficos

# Cargar el archivo CSV
data <- read_csv("C:/Users/Andrea/Desktop/prueba/jobs_in_data_science.csv")

# Seleccionar solo las columnas numéricas
numeric_data <- data %>%
  select(where(is.numeric))

# Calcular la matriz de correlación
correlation_matrix <- cor(numeric_data, use = "complete.obs")

# Convertir la matriz de correlación en un formato adecuado para ggplot
melted_correlation_matrix <- melt(correlation_matrix)

# Visualizar el mapa de calor
ggplot(data = melted_correlation_matrix, aes(x = Var1, y = Var2, fill = value)) +
  geom_tile() +
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", 
                       midpoint = 0, limit = c(-1, 1), space = "Lab", 
                       name = "Correlación") +
  theme_minimal() + 
  theme(axis.text.x = element_text(angle = 45, vjust = 1, 
                                   size = 12, hjust = 1)) +
  coord_fixed() +
  labs(title = "Mapa de Calor de la Matriz de Correlación", 
       x = "Variables", y = "Variables")

# ******* Ejercicio 5: Filtrado y análisis avanzado *******

#1. Filtra el dataset para analizar salarios en empresas grandes (company_size = 'L') y pequeñas (company_size = 'S').
# Cargar el archivo CSV
data <- read_csv("C:/Users/Andrea/Desktop/prueba/jobs_in_data_science.csv")

# Filtrar empresas grandes (company_size = 'L')
empresas_grandes <- data %>%
  filter(company_size == 'L')

# Filtrar empresas pequeñas (company_size = 'S')
empresas_pequenas <- data %>%
  filter(company_size == 'S')

# Mostrar las primeras filas de cada DataFrame filtrado
head(empresas_grandes)
head(empresas_pequenas)

#2. Compara:
# ¿Cuál es la diferencia promedio entre los salarios de empleados en empresas grandes y pequeñas?
# Calcular el salario promedio en empresas grandes
salario_promedio_grandes <- mean(empresas_grandes$salary, na.rm = TRUE)
salario_usd_promedio_grandes <- mean(empresas_grandes$salary_in_usd, na.rm = TRUE)

# Calcular el salario promedio en empresas pequeñas
salario_promedio_pequenas <- mean(empresas_pequenas$salary, na.rm = TRUE)
salario_usd_promedio_pequenas <- mean(empresas_pequenas$salary_in_usd, na.rm = TRUE)

# Calcular la diferencia promedio entre los salarios
diferencia_promedio <- salario_promedio_grandes - salario_promedio_pequenas
diferencia_usd_promedio <- salario_usd_promedio_grandes - salario_usd_promedio_pequenas

# Imprimir los resultados
cat("Diferencia promedio entre salarios en empresas grandes y pequeñas:\n")
cat("Salario:", diferencia_promedio, "\n")
cat("Salario en USD:", diferencia_usd_promedio, "\n")

# Existen diferencias en la modalidad de trabajo (work_setting) entre estos tamaños de empresa?
# Contar modalidades de trabajo en empresas grandes
modalidades_grandes <- empresas_grandes %>%
  count(work_setting)

# Contar modalidades de trabajo en empresas pequeñas
modalidades_pequenas <- empresas_pequenas %>%
  count(work_setting)

# Imprimir los resultados
cat("Modalidades de trabajo en empresas grandes:\n")
print(modalidades_grandes)

cat("\nModalidades de trabajo en empresas pequeñas:\n")
print(modalidades_pequenas)
