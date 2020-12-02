library(MASS)
# Utiliza str() y head() para explorar la estructura,
# y con help(), mirar el significado de cada variable.

str(birthwt)
head(birthwt,5)
help("birthwt")

# Calcula una tabla de frecuencias relativas marginales de los pares (raza de la madre,
# peso inferior a 2.5 kg o no) que permita ver si la raza de la madre influye en el peso del bebé.

birthwt$race <- factor(birthwt$race,levels = c(1,2,3),labels = c("blanca","negra","otra"))      
birthwt$low <- factor(birthwt$low, levels = c(0,1), labels = c("normal","bajo"))                      

pb <- prop.table(table(birthwt[c(1,4)]), margin = 2) 
table(birthwt[c(1,4)])
mosaicplot(pb, main = "mosaico que muestra la relacion entre \n peso bajo y raza de la madre",
           color = c("blanchedalmond","gray7","darkkhaki"), xlab = "Peso", ylab = "Raza")
#Dibuja un diagrama bidimensional de barras, con las barras organizadas en bloques,
#que permita visualizar la información de los ejercicios anteriores. 
#Aprovecha para nombres adecuados a los bloques, colores a las barras,
#y añadir una leyenda que explique qué representa cada barra.

barplot(t(pb), beside = T, ylim = c(0,.6),legend.text = T, col = c("blanchedalmond","gray7","darkkhaki"),
        xlab = "Peso", ylab = "Raza")


#Repite los cuatro ejercicios anteriores para los pares
#(madre fumadora o no, peso inferior a 2.5 kg o no) 
#y para los pares (madre hipertensa o no, peso inferior a 2.5 kg o no.
birthwt$smoke<-factor(birthwt$smoke, levels = c(0,1),labels = c("no","sí"))
pb_f <- prop.table(table(birthwt[c(1,5)]), margin = 2)
mosaicplot(pb_f, main = "mosaico que muestra la relacion entre \n madres fumadoras y el peso de los hijos ",
           color = c("blanchedalmond","gray7"), xlab = "peso", ylab = "fuma")
barplot(t(pb_f), beside = T, ylim = c(0,.85),legend.text = T, col = c("blanchedalmond","gray7"),
        xlab = "Peso", ylab = "Fuma")
pb_f

birthwt$ht <-factor(birthwt$ht, levels = c(0,1), labels = c("no","sí"))
pb_h <- prop.table(table(birthwt[c(1,7)]), margin = 2)
factor(birthwt$ht)
mosaicplot(pb_h, main = "mosaico que muestra la relacion entre \n madres con hipertensión y el peso de los hijos ",
           color = c("blanchedalmond","gray7"), xlab = "peso", ylab = "Hipertensión")
barplot(t(pb_h), beside = T, ylim = c(0,.85),legend.text = T, col = c("blanchedalmond","gray7"),
        xlab = "Peso", ylab = "Hipertensión")


#Calcula una tabla de frecuencias relativas marginales de las ternas
#(raza de la madre, madre fumadora o no, peso inferior a 2.5 kg o no) 
#que permita ver si la raza de la madre y su condición de fumadora o no fumadora 
#influyen en el peso del bebé.

head(birthwt,2)
pb_r_f <- prop.table(table(birthwt[c(4,5,1)]), margin = c(1,2))

mosaic(pb_r_f, main = "mosaico que muestra la relación entre\n \"raza\", \"fumador\" y el \"peso bajo\"")
