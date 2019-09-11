#source-https://dasl.datadescription.com/datafiles/?_sf_s=archery&_sfm_cases=4+59943

getwd()
read.csv("Archery Data.csv") #read data 
Archery<-read.csv("Archery Data.csv") #assign variable

#coloumn names
colnames(Archery)

#************************Descriptive Statitcs****************************

#mean
mean(Archery$Total.score..F.)

#median
median(Archery$X1st.Half)

#range
range(Archery$X1st.Half)

#variance
var(Archery$X2nd.Half)

#standard deviation
sd(Archery$X2nd.Half)

#highest of total score amongst all Archer Women
max(Archery$Total.score..F.)

#lowest of total score amongst X1st half
min(Archery$X1st.Half)

#which archer has highest total score
which.max(Archery$Total.score..F.)

#Which Archer women has highest total score(shows all the columns)
Archery[which.max(Archery$Total.score..F.),]

#Which Archer women has lowest total score(shows all the columns)
Archery[which.min(Archery$Total.score..F.),]

#to get index of the X1st Half (order always sort values ascendingly)
order(Archery$X1st.Half)

#********************Bar plot and Scatter Plot***********************

#bar plot
barplot(Archery$Total.score..F.,xlab="Count",ylab = "Total score",main = "Count Vs Total score")

#scatter plot
plot.default(Archery$X1st.Half,Archery$X2nd.Half, xlab = "X1st Half",ylab = "X2nd Half",main ="X1st Half Vs X2nd Half")

#**************************Transformation****************************
library(rcompanion)
plotNormalHistogram(Archery$Total.score..F.,main = "Normal Histogram")

#Log transformation
T_log = log(Archery$Total.score..F.)
print(T_log)
library(rcompanion)
plotNormalHistogram(T_log, main = "Total Score")

#squareroot transformation
T_sqrt = sqrt(Archery$Total.score..F.)
print(T_sqrt)
library(rcompanion)
plotNormalHistogram(T_sqrt, main = "Total Score")

