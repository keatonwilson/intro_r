gapminder<-read.csv("gapminder-FiveYearData.csv", header=T)
names(gapminder)
gapminder$country
head(gapminder[,c("country", "year", "pop")])

#selecting by logical vector
x<-c(1,2,3,11,12,13)
x<10
x == 11 #this is asking whether x is = 11
x !=11 #asking which one is not 11
x %in% 1:5 #which ones are between 1-5

sixtytwo<-gapminder$year == 1962
head(gapminder[sixtytwo,])
#in one single line
head(gapminder[gapminder$year == 1962,])

long_lived<-gapminder[gapminder$lifeExp>75,] #creating levels of lifeExp >75
str(gapminder)
str(long_lived)
long_lived$country<-droplevels(long_lived$country) #drop everything that is not in 
#previous levels created
str(long_lived)


#Exercise:plotting life expectancy
#Create two boxplots
# 1. Continents & their expected life expectancies for any given year
# 2. Years & associated life expectancies
# HINT: #boxplots can be made using: plot(x=factors, y=values)









