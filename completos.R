completos<- function(directorio, id=1:132){
  setwd("~/dany/Programacion_Actuarial_III/specdata")
  nobs<-vector("numeric", length(id))
  j<-1
  for(i in id){
    r<-read.csv(paste(formatC(i, width = 3, flag = "0"), ".csv", sep=""), header = TRUE)
  md<- data.frame(r$nitrate)
  nobs[j]<-nrow(md[complete.cases(md),])
  j<- j+1
  }
    data.frame(id,nobs)
  }
