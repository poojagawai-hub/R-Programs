"Hello world"
# only homogenous vectors we ues # one type
# vector of strings
fruits = c("banana, appple,orange") # c is function
class(fruits)
# vector of numerical
n1 = c (1,2,3,4)
n2 = c(T,F,TRUE,FALSE)
class(n1)
class(n2)

# Heterogenous vectors 
mix = c(81,5.2,TRUE,"mango",5L,F)
class(mix)

x = c(2,5,6,4)
y = c(1,9,8,9)

x+y

x*y

(x+y)*1.5

#sequence
1:10

seq(1,50,5) # start value ,end value, step/increment/decrement
seq(1,50,by=3)
seq(1,10)
seq(10,1,-2) # default increment/decrement is 1
seq(10,1)

n1 = 1.5:6.3 #default increment value is 1
n1

# Repetition
rep(45,7)

rep("mango",5)

# Random Sample

sample(1:50,5)
sample(1:10,200) # error default value for replace=FALSE
sample(c("HP","Apple","Lenovo "),7,replace = T)
sample(c("HP","Apple","Lenovo "),2)

# Indexing /Accessing vector elements

x = c(2,5,8,20,10,30,58)
x

x[7]
x[2:4]

x[3,7] # will raise an error


x[c(3,7)]

x[-1] # exclude 1 st element
x
x[c(-1,-4)]

x[-1] = 5
x
x[1] =1
x

3<5
y=c(1,9,9,9)
y
y<9

y[y<9] = 7
y

y[y>7] = 12
y


# Relational operators with vectors


marks=c(60,70,80,90)

marks>50

marks[marks>50]

marks==80

names=c("snehal","Pooja","vidya", "ganesh")
"Pooja" %in% names
"meena"%in% names

#slicing

marks
marks[3:7]
marks[4]
marks[3]=97
marks

price=c(2999,449,29,650,789,456,4567,4456)
price[2:7]

#select element from a vector with conditions

price>1000
price[price>1000]

sort(price)

sort(price,decending = t)#raise an error
help(sort)
sort(price,decreasing = t)#this is the correct command

help(mean)
length(marks)

help(paste)
paste(1:12)
1:12

nth = paste(1:12, c("st","nd","rd", rep("th" ,9)))
nth

month.name
month.abb

paste(month.abb, "is the" , nth, "month of the year.")


aaa = c(sample(1000:2000,5))
1:2
1:12

# Basic functions on vectors 
price
length(price)
max(price)
min(price)
sum(price)
mean(price)
median(price)
help(mode)
mode(price)

#Data Frames
# slicing Data frames
a = c(42,28,92,87,66)
b = c("p","q","r","s","t")

data.frame(a,b)
df = data.frame(a,b)
View(df)

df1 = data.frame(
   training=c("strength","stamina","other"),
   pulse=c(100,150,120),
   duration=c(60,30,45)
)

df1

df1[,1]#all row,1st colomn
df1[2,]


Food = data.frame(name=c("Pav Bhaji","Paneer Masala","Kaju Katli","Butter Chicken","Gulabjamun","Mutton Briyani"),
                  type=c("veg","veg","veg","Nonveg","veg","Nonveg"),
                  taste=c("Spicy","Spicy","Sweet","Spicy","Sweet","Spicy"),
                  price=c(120,235,420,340,90,315))

Food

# Rows with food type :Veg

Food[Food$type=="veg",]
View(Food)

# Food names and prices of all nonveg items

Food[Food$type=='Nonveg',c(1,4)]
#or
Food[Food$type=='Nonveg',c("name","price")]

#all spicy food with price less than 300

Food[Food$taste=='Spicy' & Food$price<300,]

Food[Food$taste=='Spicy' | Food$price<300,]

#Orange ,mtcars are build in data set.Learn with this data frames
Orange
mtcars

dim(Orange) # dimension
dim(mtcars)
nrow(mtcars)#no of rows
ncol(mtcars)#no of column

str(mtcars)# structure -col names data types and value
summary(mtcars)

help("mtcars")# info of dataset
mtcars$cyl#individual col cyl values
table(mtcars$cyl)#there are all cars having 4 cylinder,7 
unique(mtcars$cyl)
mtcars$gear
table(mtcars$gear)

#USArrests - another dataset
USArrests
help("USArrests")
View(USArrests)# database opens in new window in table structure

head(USArrests)# by default shows first 6 records 
tail(USArrests)#by default shows bottom records
head(USArrests,8)
head(USArrests,10)

#check all available datasets
data()

ages = c(21,30,40,22,45,50,51,23,25,35)
plot(ages)

salary=c(21000,30000,40000,22000,45000,50000,51000,23000,25000,35000)
plot(salary)

#In dotrycatch(return(exp),name,parentenv,handler):
#invalid graphics states - solution to this warning: install ggplot2 from

plot(ages,salary)
plot(salary,ages)

help(plot)

#airquality = read.csv('path/airquality.csv',head)
#click on import dataset
data()
airquality = datasets::airquality

##top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
names(airquality) #names of all column

# to see entire dataset click on airquality data column
airquality[,c(1,2)]#all rows and first two column

df= airquality[,-6]# excludes column no.6
df

summary(airquality[,1])
summary(airquality$Temp)


airquality$Wind #display column values
summary(airquality$Wind)

summary(airquality) # summary of all column

####### visualization 
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type = "p") #p=point
plot(airquality)#scatterplot

help("plot")
plot(airquality$Ozone,airquality$Temp)
plot(airquality$Month,airquality$Ozone)

#points and lines

plot(airquality$Wind , type = "p")#p= point
plot(airquality$Wind , type = "l")#l= line graph
plot(airquality$Wind , type ="b")# b= both (point and line)

help(plot)

plot(airquality$Wind,
     xlab = 'Ozone Concentration ' ,
     ylab = 'No of Instances ',
     main = 'Ozone levels in NY city',
     col= 'green',
     type = 'l')

plot(airquality,col='red')


#Horizontal bar plot

barplot(airquality$Ozone,
        main ='ozone Concentration  in air ',
        ylab = 'ozone levels',
        col = 'blue',
        horiz = T,
        axes = T)

help("barplot")

#Histogram 
hist(airquality$Temp)

hist(airquality$Temp,
     main = 'Solar Radiation  values in air',
     xlab = 'Solar rad.',
     col = 'blue',
     border = 'red')

help("hist")

#single Box Plot
boxplot(airquality$Wind,
        main="Boxplot",
        col ='blue',
        border = 'red',
        horizontal=T)

boxplot.stats(airquality$Wind)$out #outliers values
airquality$Ozone

#Multiple box plots

boxplot(airquality[,1:4],
        main="Boxplot",
        col ='blue',
        border = 'red',
        horizontal=T)


#margin of the grid(mar)(bottom,left,top,right)
#no of rows and columns(mfrow),
#whether a borderis to be included(bty)
#and position of the
#labels(las: 1 for horizontal , las :0 for vertical )
#bty - box around the plot (o,n,7,L,C,U)
help(par) # partitio
par(mfrow=c(3,3),mar=c(1,2,1,2), las=0 ,bty ='o')
plot(airquality$Ozone)
plot(airquality$Ozone , airquality$Wind)
plot(airquality$Ozone, type = "l")
plot(airquality$Wind, type = "l")
plot(airquality$Solar.R, type = "l")

barplot(airquality$Ozone, main ='ozone Concentration  in air ',
        ylab = 'ozone levels',
        col = 'blue',
        horiz = T,
        axes = T)

hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4],main ="multiple box plot")


#considering NA values
airquality
max(airquality$Wind)
min(airquality$Temp)
min(airquality$Solar.R)
airquality$Solar.R

mean(airquality$Solar.R)
mean(airquality$Wind)
summary(airquality$Solar.R)

summary(airquality)
summary(airquality$Wind)

max(airquality$Solar.R,na.rm = T)#rm =remove

mean(airquality$Solar.R,na.rm = T)#rm =remove
median(airquality$Ozone)
median(airquality$Ozone,na.rm = T)
min(airquality$Ozone)


#Google following functions as variance in R, etc

#var
#skewness
#kurtosis
#Density plot

var(airquality$Wind)
sd(airquality$Ozone)
sd(airquality$Ozone, na.rm = T)
skewness(airquality$Ozone)#error
kurtosis(airquality$Ozone) #error

#Installing Packages
skewness(airquality$Ozone,na.rm = T)

# Density plot
plot(density(airquality$Wind))
plot(dendrapply(airquality$Ozone),na.rm=T)
??density# check karnel Density Estimation

#In class exercise 
e_quakes=datasets::quakes








































































































































































































