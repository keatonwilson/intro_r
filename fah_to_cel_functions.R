fah_to_kelvin<- function(temp){
  kelvin<-((temp - 32)*(5/9))+273.15
  return(kelvin)
}

kel_to_cel<-function(temp){
  celcius<-temp-273.15
  return(celcius)
}


fah_to_celsius2<-function(temp){
  temp_k<-fah_to_kelvin(temp)
  result<-kel_to_cel(temp_k)
  return(result)
}