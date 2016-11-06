


#converting fah to kelvin
fah_to_kelvin<- function(temp){
  kelvin<-((temp - 32)*(5/9))+273.15
  return(kelvin)
}

fah_to_kelvin(temp=32) 
fah_to_kelvin(32) #here to call the function because there is only one argument
#you don't need to specify temp=32, but if there are more arguments, you need to
#specify temperature is 32


#converting Kelvin to Celcius
kel_to_cel<-function(temp){
  celcius<-temp-273.15
  return(celcius)
}

kel_to_cel(0)
}

#converting fah to celcius, creating a new function
fah_to_celsius<-function(temp){
  celsius = (temp - 32)*(5/9)
  return(celsius)
}

fah_to_celsius(32)

#using the functions we already created
fah_to_celsius2<-function(temp){
temp_k<-fah_to_kelvin(temp)
result<-kel_to_cel(temp_k)
return(result)
}


#Exercise_2
best_practice <-c("write", "programs", "for", "people", "not", "computers")
asterix<- "***"

#write a function fence 2 arguments, a new vector something with asterisk at 
#the beginning and at the end

best_practice <-c("write", "programs", "for", "people", "not", "computers")
asterix<- "***"

fence<-function(input1, input2){
  result = c(input2, input1, input2)
  return(result)
}
fence(input1=best_practice, input2 = asterix)


#working with real datasets
dir.create("data") #create a directory
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile="data/gapminder.csv")
#destfile is to designate the file to the directory
#then go to the right panel and check files, and click on the data directory, and then if the file is there you can
#also click there to make sure if opens and view file to explore data 

rm(kel_to_cel)
rm(fah_to_celsius)
rm(fah_to_kelvin) #removing functions and save them in a separate file

#Calling the file with the functions just created
source("fah_to_cel_functions.R")
fah_to_kelvin(temp=32)
kel_to_cel(0)
fah_to_celsius2(0)


#select the file on Git panel, click Commit, before pushing we are still local but goes to a repository created
dat<-read.csv("data/gapminder.csv", header=T)
head(dat)
summary(dat)  
str(dat)  

#before writing a function figure out the steps, make those steps, and then put those in the function
#write a function that assess country as argument, and gives min, max, mean of lifeExp
#1. Subsetting dataframe
country_name<-subset(dat, dat$country == "Uganda") #check different betwee = and ==
head(country_name)
summary(country_name)
#2. Calculate, mean, min, max of lifeExp per country
mean(country_name$lifeExp)
max(country_name$lifeExp)
min(country_name$lifeExp)
#3. write the function
analyze<-function(countt) {
  country_name<-subset(dat, dat$country == countt)
  print(mean(country_name$lifeExp))
  print(min(country_name$lifeExp))
  print(max(country_name$lifeExp))
}
#4. test the function
analyze("Uganda")# before adding print to each of the 3 lines.
#[1] 23.599
#R by default just print the first output and ignore the rest, so need to specify print for each line
#For long or complicated functions you could use print in some spots to double check the function is doing
#what is supposed to be doing, and check intermediate steps.
#The result from previous function is:
#[1] 59.47444
#[1] 23.599
#[1] 82.603

#It will be good to have the names of each variable, so we can change the function to:
analyze<-function(countt) { #avoid using country as the name here to avoid errors, problems
  country_name<-subset(dat, dat$country == countt)
  out<- c("Mean_le"=mean(country_name$lifeExp), "Min_le"=min(country_name$lifeExp), "Max_le"=max(country_name$lifeExp))
  print(out)
  plot(country_name$year, country_name$lifeExp, xlab="Year", ylab="Life Expectancy", main=countt)
}

analyze("Uganda")
analyze("Albania")

