Harry <- seq(-10,27,by = 1)
Harry[7]
##(100*2^n -7*3^n) con n=0,...,200
N<-rep(100,201)*(2^(0:200))
N[which.max(N)]

s40 <- 0:40
x<-3.5^(-1:39)
which(s40*x>3.5)


complex(real = 1,imaginary = 3)
Mod(a)
Arg(a)
Conj(a)

complejo=function(x){
    list("Parte real" =round(Re(x),2), "Parte imaginaria" = round(Im(x),2),
               "Modulo" = round(Mod(x),2),"Argumento"= round(Arg(x),2),"Conjugado"= round(Conj(x),2))
  }
complejo(sqrt(1+3i))


chicharronera(1,1,-11)
fol<-3
4*fol**2+2

chicharronera = function(a,b,c){
  x1 <- (-b+(sqrt(b**2-(4*a*c))))/(2*a)
  x2 <- (-b-(sqrt(b**2-(4*a*c))))/(2*a)
  print(c("la solución 1 es",x1," y la solución 2 es",x2))
}


vec = c(0,9,98,2,6,7,5,19,88,20,16,0)

subvec1<-vec[c(2,8,10,11)]
subvec2<-vec[c(which(vec==9),which(vec==19),which(vec==20),which(vec==16))]
subvec3<-vec[vec>=9&vec<=20] 

which(vec%%2==0)
which(vec%%2==1&vec>=20)
vec[which.max(vec)]
vec[which.min(vec)]

Harry = c(-10:27)


cat("El elemento en la posición 7 es: ", Harry[7],"\n")
sucesion = function(n){
  
  return (100*(2^n) - 7*(3^n))
  
}
cat("El valor máximo de la sucesión es: ", max(sucesion(0:200)),"\n")

serie = c(0:40)

sucesion = function(n){
  
  return (3*5^(n-1))
  
}

x = c(sucesion(serie))

verticalMatrix = matrix(data=x[which(x>3.5)], ncol = 3, byrow=F)



paste(c("Los valores que son mayores a 3.5 son los siguientes: \n\n"), collapse="")

verticalMatrix
func = function(number){
  
  Real = round(Re(number),2)
  
  Imaginary = round(Im(number),2)
  
  Module = round(Mod(number),2)
  
  Con = round(Conj(number),2)
  
  
  
  result = c(Real, Imaginary, Module, Con)
  
  return (result)
  
}



numero = func(3+5i)

paste(c("Número complejo: ", 3+5i),collapse="")

paste(c("Parte real del número complejo: ", numero[1]),collapse="")

paste(c("Parte imaginaria del número complejo: ", numero[2]),collapse="")

paste(c("Modulo del número complejo: ", numero[3]),collapse="")

paste(c("Conjugado del número complejo: ", numero[4]),collapse="")

funcion = function(x){print(c(Re(x), Im(x), Mod(x), Arg(x), Conj(x)),2)}

funcion

funcion(1+5i)
