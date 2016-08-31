---
  title: "Untitled"
author: "Daniela"
Date:"Monday, August 22"

output: html_document:
               the:cerulean
----
  
  encabezado
#primer nivel **primer nivel**

##"segundo nivel"

###tercer nivel


#clase 25 agosto 2016
#crear vectores de la función vector
x<- vector (mode"numeric", length = 5L)


#crear vectores con la función c
x<- c(0,5,0,6)
x
class(x)

x<- 5:10
x
class(x)
x<- c(1+2i,5,3+9i, 4+5i)
x
class(x)



#mezcla los objetos de un vector
y<- c(1.7,"a") #caracter
y

class(y)
y<-c(true,2) #numérico
y

class(y)
y<- c("a",true) #caracter

#0rden de coacción/ coerción explicita
#4 integer
#5 logical

y<- c(TRUE, 10L, 8.5, 1+1i,"NACHO")
y
class(y)

#coerción explicita
z<- 0:6
class(z)
as.numeric(z)
as.logical(z)
as.character(z)

z<- c(1+2i,3+4i,8,0+3i,0)
as.logical(z)

z<- c("programación", "Actuarial", "III")
as.numeric(z)
as.logical(z)
as.complex(z)

#LISTAS
x<- list(1,"a",TRUE,1+4i)
x

x<-list(1,"a",2, 3:100)
x

#LISTA(es un vector de vectores y cada uno tiene su propia clase)
class(x)

#matrices
m<- matrix(nrow=2,nco=3)
m

dim(m)
attributes(m)
#cambio de dimensiones de 2x3 a 3x2
dim(m) <- c(3,2)
m
#crear una matriz con datos
m<- matrix(1:6,3,2)
m
m<- matrix(1:6,3,3)




#factores
x<-factor(C("si","no","si","si","no","si","no"))
x

table(x)
unclass(x)
x<-factor(c("si","no","si","si","no","si","no"))levels=c("si","no")
x
unclass(x)
y<-factor("azul","rojo","verde","amarillo","rojo","azul","azul","amarillo","azul")
y


x<-c(1,2,NaN,10,3)
is.na(x)
is.nan(x)

#Data frames
X<- data.frame(Erick=1:4, Lori=c(T,T,F,F))
X
row.names(x)<- c("primero","segundo","tercero","cuarto")
x
nrow(x)
ncol(x)
attributes(x)
names(x)<.("Yarely","Karen")
x
#Los nombres no son exclusivos de los data frames
x<-1:3
names(x) #NULL
names(x) <-c("Hugo","Luis")
x
x<-list(a=1:10,b=100:91,c=51:60)
x
names(x)<-c("Seq1","SEQ2","sEq3")
x

m<- matrix(1:4,2,2)
m
attributes(m)
dimnames(m)<-list(c("fil1","fil2"),c("col1","col2"))
m

m<-matrix(NA,5,6)
m

#lectura de datos
getwd()
setwd("~/GitHub/Programacion_Actuarial_III")
data<- read.csv("table.csv") #manda a llamar
data<-read.table("table.csv", T,",")
data
