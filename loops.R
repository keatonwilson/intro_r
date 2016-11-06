#Loops

best_practice

best_practice_fun<-function(some_argument){
  print(some_argument[1])
  print(some_argument[2])
  print(some_argument[3])
  print(some_argument[4])
  print(some_argument[5])
  print(some_argument[6])
}

best_practice_fun(best_practice)

#Looops (for is one of them)
for (w in best_practice){ #for each of this component of the list(best_practice) print each component
  print(w)
}

best_practice_fun2<-function(some_argument){
  for (w in some_argument){
    print(w)
   }
}

best_practice_fun2(best_practice)

#Generate a file with years "1952" and "1997" and name it as gapminder_52_97
#and another file with years "1967 and "2007" and name it as gapminder_67_07

setwd<-"C:/Users/smduranm/Desktop/Carpentry/intro_r/data"
dat<-read.csv("data/gapminder.csv", header=T)
head(dat)
summary(dat)

summary(dat)
gapminder_52_97<- subset(dat, dat$year == 1952 | dat$year == 1997) #| use this b/c is either one, so means "OR"
head(gapminder_52_97)  


gapminder_67_07<-subset(dat, dat$year == 1967 | dat$year == 2007)
head(gapminder_67_07)

write.csv()

filenames<-list.files<(path="data", pattern=".csv", full.names=T) #calling files with same extention or type

#the function we did before accepts only 1 argument, so we create a new function for more arguments
analyze_data<-function(file,new){
  file_out<-read.csv(file, header=T)
  country_name<-subset(file_out, file_out$country == new)
  out<- c("Mean_le"=mean(country_name$lifeExp),
          "Min_le"=min(country_name$lifeExp),
          "Max_le"=max(country_name$lifeExp))
  print(file)
  print(new)
  print(out)
  
} #this is INCOMPLETE


analyze_all<-function(pattern,new){
  filenames<-list.files(path="data", pattern=pattern, full.names=)
} #THIS IS INCOMPLETE

#R-Markdown useful, needs more updated R version to use it


#How to put the code into github






  
