#Six types of data
#1. Character
c<-a
c<-'Hello'
#2. Numeric
n<-2
m<-3.4
#3. Integer
i<-2L #capital L for integer
#4. Complex
comp<-1+4i #allow real and imaginary numbers
#5. logical
l<-TRUE
l<-FALSE
#6. List #allows to store combinations of different types of data

s<-"Hello world"
class(s) #asking what class is s
typeof(s) #asking what class is s

x<-1
class(x) 
typeof(x) #output shows double

y<-1L
class(y)
typeof(y)

z<-as.numeric(y)
class(z)

l<-1:10
class(l)
length(l)

# 4 DATA STRUCTURES
# 1. Atomic vector, can store the same data type
# 2. List,  can store different types of data
# 3. Matrix, can store the same data type
# 4. Data Frame, is like a list, it can hold different data types

#atomic vector
log_vector <-c(T,T,F,T)
character_vector<-c("Asher", "Matt", "Sean")
character_vector<-c("Asher", "Matt", "Sean")
character_vector<-c(character_vector, "Heather", "Andreina")
length(character_vector)
class(character_vector)

#Empty data 
#NA
a<- c("A", "B", NA, "D")
length (a)

anyNA(a) #Ask if there are NAs in your data
#Extremes
1/0 #Inf
0/0 #NaN

mixed<-c(T, "A")
as.logical(mixed) #converts a into NA, because can't convert A to logical


#Lists
my_list<-list(1, "A", T)
my_list

phonebook<-list(name="Asher", phone="111-1111", age=27)
phonebook["name"]

#Matrices
m<-matrix(nrow=2, ncol=3)
m
m<-matrix(1:6, nrow=2, ncol=3)
m
m<-matrix(1:6, nrow=2, ncol=3, byrow = T)

#Data frames
df<-data.frame(id=letters[1:10], x=1:10, y=11:20)
df
class(df)
head(df)
tail(df)
ncol(df)
nrow(df)
str(df)
summary(df)
names(df)


state<-factor(c("Arizona", "Colorado", "Arizona"))
state
nlevels(state)
levels(state)

ratings<-factor(c("low", "high", "medium", "low"))
ratings
min(ratings)
ratings<-factor(ratings, levels=c("low", "medium", "high"), ordered = T)
levels(ratings)
min(ratings)

survey=data.frame(name=c("Jack", "Jill", "Mark", "Jerry", "Maria"), sex=c("M", "F", "M", "M", "f"))
str(survey)

barplot(table(survey$sex))
levels(survey$sex)
survey$sex[survey$sex == 'f']<-"F"
survey
levels(survey$sex)
survey$sex<-droplevels(survey$sex)

#exercise which columns in our gapminder dataset are factors?
#hint use str or summary


