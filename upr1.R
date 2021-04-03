
library(UsingR)

View(homedata)


max(homedata$y2000)

min(homedata$y2000)


homedata$y1970[which.max(homedata$y2000)]

sort(homedata$y2000, decreasing = T) [1:5]

sum(homedata$y2000 > 750000)
length(homedata$y2000[homedata$y2000 > 750000] )


mean(homedata$y1970[homedata$y2000 > 750000])


homedata$y2000[homedata$y2000 < homedata$y1970]


#zadacha 3


library(MASS)


table(survey$Sex)
sum(survey$Sex == "Male", na.rm=T)


sum(survey$Sex == "Male" & survey$Smoke!="Never", na.rm=T)
#dr variant
t <-table(survey$Sex, survey$Smoke)
sum(t[2,-2]) # sumira elemtite ot 2-riq red kato maha vtoriqt mu element


mean(survey$Height[survey$Sex =="Male"], na.rm=T)



survey[sort(survey$Age) [1:6],  ]
