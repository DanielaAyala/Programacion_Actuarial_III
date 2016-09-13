caminata <-function (x:n)
  z<-x
  k<-1
  v<- vector("numeric", 0)
  for(i in 1:n){
    length(v)<- length(v)+1
    vector[v]<-(z)
    moneda<- rbinom(1,1,0.5)
    if (moneda==1){
      z<-z+1
      v[v]<-z
    }else{
      z<-z-1
      v[v]<-z
    }
      k<-k+1
      if(k==100) break
      
  }
  table (caminata)
  
 

  
  
  