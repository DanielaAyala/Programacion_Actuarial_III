#creamos un vector
x<- c("a","b","c","c","d","e")
#veamos el vector
x
#extraemoselementos con []
x[1]
x[2]
#también podemos extraer una secuencia de elementos
x[1:4]
#es posible extraerlos elementos que cumplen una restriccion
x[x>"b"]
#de manera equivalente se puede obtener un vector lógico
#u<- x="c"
#u
#x[u]

#creamos una lista
x<-list(foo=1:4,bar=0.6)
#extraemos el primer elemento de la lista
#este elemento es una lista que contiene una secuencia
x[1]

#extraemos nuevamente el primer elemento de la lista
#ahora el elemento es la secuencia en sí
x[[1]]
#extraemos un elemento por nombre
x$bar
x[["bar"]]
x["bar"]


#se puede extraer de los elementos extraidos
#x<-(a=list(10,12,14)),b=list(3,14,2,81))
#x[[c(1,3)]]
#x[[1]][[3]]
#x[[c(2,1)]]

x<-matrix(1:6,2,3)
x
#el resultado es un vector
x[1,2]
#con drop=FALSE se mantiene la dimensión y
#el resultado será una matriz
x[1,2,drop=FALSE]
x<-matrix(1:6,2,3)
x
#si dejamos solamente el espacio, el resultado será un vector
x[1,]
#si usamos drop=FALSE, el resulultado será una matriz
x[1,drop=FALSE]


x<-list(aardvark=1:5)
x$a
x[["a"]]
x[["a", exact=FALSE]]

airquality[1:6,]
completos<-complete.cases(airquality)
airquality[completos,][1:6,]


#operaciones en R con vectores
x<-1:4; y<-6:9
x+y

x>2
x>=2
y==8
x*y
x/y

#operaciones con matrices
x<-matrix(1:4,2,2); y<-matrix (rep(10,4),2,2)
x
y

x*y
x/y
#mult. e matrices
x%*%y


#clase 08 sep. 16
#if,else para probar condicion
#for ejecuta un ciclo determinado numero de veces
#while ejecuta un ciclomientras cumpla condicion
#repeat ejecuta un ciclo infinito
#break termina la ejecución de un ciclo
#netx "salta" una iteración de un ciclo
#return sale de una función

#if(condición) ##alguna instrucción
 # else
    ##algunas otras instrucciones
# if(condicion1) 
#  else if (condición2)
 #   else
      ##algunas instrucciones diferentes

if(x>3)
  y<-10 else
  y<-0

for(i in 1:10)
  print(i)

x<-c("a","b","c","d")
for (i in 1:4) (print(i))
for (i in seq_along(X)) {(print(x[i]))} #hasta numero de elementos que tenga
for(letra in x) (print(letra))
for (i in 1:4) print(x[i])

  #matrriz se 2x3 1:6 que se imprima una fila y asi...
  
x <- matrix(1:6,2,3)
x
for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}


#seq_along(x) se muestra de manera secuencial
#seg_len(x) secuencia matricial

#clase 12/sep
z <-5
while(z>=3 && z<=10){ #doble& es solo con un solo numero el resultado
  print(z)
  moneda <- rbinom(1,1,0.5) #numero de exitos
  if(moneda==1){#caminata Aleatoria
    z<-z+1
  }else{ #es cero
    z <-z-1
  }
}

z <-5
caminata <- vector ("numeric")  #c(caminata,z)
while(z>=3 && z<=10){
   
  print(z)
  caminata<- c(caminata,z)
  moneda<- rbinom(1,1,0.5)
  if (moneda==1){
    z<-z+0.5
  }else{
    z<- z-0.5
  }
}

caminata

  plot(caminata,type="l") #grafica
  plot
  
caminata <- function(x,n)
    z<-x
  k<-1
  v<- vector("numeric",0)
  for(i in 1:100){
    length(v)<-length(v)+1
    vec[k]<-(z)
    moneda <- rbinom(1,1,0.5)
    if (moneda==1){
      z<-z+1
      v[k]<-z
      }else{
      z<z-1
      v[k]<-z
      
    }
    k<-k+1
    if(k==100) break
    }
  print(v)
  plot(v,type="l", lwd=5)
  
  
  
  
 
  


