##install.packages("lubridate")  
library(lubridate)                    
ymd(20180101)+seconds(250000000)


dias_b=(round((2018%%4+(250000000*(1/60)*(1/60)*(1/24)*(1/365)))/4))
segundos <- 250000000%%60
minutos <- ((250000000)%/%60)%%60
horas <- ((250000000%/%60%/%60)%%24)
dias <- ((250000000%/%60%/%60)%/%24)%%365-dias_b
años <-((((250000000%/%60%/%60)%/%24)%/%365)%%365)
print(c(2018+años,01+dias,00+horas,00+minutos,00+segundos))


ec_lin = function(a,b,c){
  print((b-c)/a)
}
ec_lin(5,3,0)
ec_lin(7,4,18)
ec_lin(1,1,1)

##Dad una expresión para calcular 3e-π y a continuación, 
#dad el resultado que habéis obtenido con R redondeado a 3 cifras decimales.

round(3*exp(1)-pi,3)
#Dad el módulo del número complejo (2+3i)^2/(5+8i) redondeado a 3 cifras decimales.
round(Mod((2+3i)^(2/(5+8i))),3)



