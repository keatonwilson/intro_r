read.csv("gapminder-FiveYearData.csv", header=TRUE)
#save data into R
gapminder <-read.csv("gapminder-FiveYearData.csv", header=TRUE)
head(gapminder) #print first few lines of gapminder
class(gapminder) #stores gapminder as dataframe
dim(gapminder) #dimensions of the data

#Access  data
#gapminder [rows, columns]
gapminder[1,1]
gapminder[1,] #first row
gapminder[1:12,] #rows 1-12
gapminder[1:12, 1:3] #rows 1-12, columns 1-3
gapminder[c(1,13,25), 1:3] #rows 1,13,25, columns 1-3
gapminder[,-4] #ignores the 4th row
head(gapminder [,-4])
head(gapminder [-1:-12,]) #'-' will exclude data

pops<-gapminder[,3]
min(pops)
max(pops)
mean(pops)
sd(pops)

#Exercise

exercise1<- gapminder[,c(1,2,5)]
head(exercise1)
expectancies<-exercise1[,3]
min(expectancies)
max(expectancies)

#shorter way
new_gapminder<- gapminder[,c(1,2,5)]
head(new_gapminder)
min(new_gapminder[,3])








