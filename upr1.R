

# task 1
x = c(8,3,8,7,15,9,12,4,9,10,5,1);

matrica = matrix(data = x,nrow = 4,ncol = 3)

c = seq(1, by = 2, length.out = 4) # generates sequence from 1 by 2 with length 4

rownames(matrica) = c('a','b','c','d')

cbind(matrica,c);

matrica[order(matrica[,1]),]

#task 2


library(UsingR)

View(homedata)

# most expensive and cheapest house in 2000
max(homedata$y2000)
min(homedata$y2000)

# prices of above houses in 1970
homedata$y1970[which.max(homedata$y2000)]
homedata$y1970[which.min(homedata$y2000)]

#prices of 5 most expensive houses in 2000

sort(homedata$y2000,decreasing = T) [1:5]


# number of houses more expensive than 750 000 in 2000

sum(homedata$y2000 > 750000)
length(homedata$y2000[homedata$y2000 > 750000] )



# mean price of houses from above  in 1970 

mean(homedata$y1970[homedata$y2000 > 750000])


# price in 2000 of those houses which price has decreased


homedata$y2000[homedata$y2000 < homedata$y1970]

# 10 houses with greatest percent increase
ind <- order(
  (homedata$y2000 - homedata$y1970) / homedata$y1970, decreasing = TRUE
)

# first  way
homedata[ind[1:10], ]

# second way
homedata[ind, ][1:10, ]

# third way
homedata[ind, ] %>%
  head(10)


#task 3

library(MASS)
View(survey)



# # of males

table(survey$Sex) # - > gives table of female and male number
sum(survey$Sex == "Male",na.rm = T)

# #of males who are smokers
sum(survey$Sex == "Male" & survey$Smoke!="Never", na.rm=T)

t <-table(survey$Sex, survey$Smoke)

#Heavy Never Occas Regul
#Female     5    99     9     5
#Male       6    89    10    12

sum(t[2,-2]) # sumira elemtite ot 2-riq red kato maha vtoriqt mu element


# average height of males

mean(survey$Height[survey$Sex=="Male"], na.rm = T)



# height and sex of 6 youngest students

h = sort(survey$Age)[1:6]

table(survey$Sex[h],survey$Height[h])


