rankhospital<- function(estado, resultado, num="mejor"){
  setwd("~/GitHub/HospitalData")
  
  data<- read.csv("outcome-of-care-measures.csv")
  c<- FALSE
  
  if(resultado == "falla"){
    col<- 11
  }
  else if (resultado == "falla"){
    col<- 17
  }
else{
  col<- 23
}
  a<- matrix(data[,col], 4706,1)
  data[,col] <- suppressWarnings(as.numeric(a))
  data[,2] <- as.character(data[,2])
  
  b<- data[grep(estado,data$State),]
  
  orden <- b[order(b[,col], b[,2], na.last = NA),]
  
  if(num == "mejor"){
    r<- orden[1,2]
  }else if (num == "peor"){
    r<- orden [nrow(orden),2]
  }else {
    r<- orden[num,2]
  }

  if(!((resultado == "ataque") | (resultado == "falla")
    | (resultado == "neumonia"))) {
    stop ("resultado invalido")
  }
  
  e<- matrix(data[,7], 4706,1)

  for (i in 1:length(e))
    if(estado == e[i]){
      
      c<- TRUE
    }
if(!c){
  stop("estado invalido")
}
  r
  }



