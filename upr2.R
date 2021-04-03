#zadacha 2

attach(survey)
prop.table(table(survey$Smoke))

prop.table(table(Sex,Smoke),1)



#случайно избран човек да се окаже редовен пушач
pt= prop.table(table(Smoke)) #дели всеки елемент на общия брой


#случайно избран човек да се окаже редовно пушещ мъж
t=prop.table(table(Sex,Smoke))



#случайно избран  мъж да се окаже редовен пушач

ppt=prop.table(table(Sex,Smoke),1)

#случайно избран редовен пушач да се окаже мъж
tt=prop.table(table(Sex,Smoke), 2)




#zad3
pie(table(Smoke))
barplot(table(Smoke), legend=T)




#zadacha 4
group = cut( Age, breaks = c(0, 20, 25, 100), labels = c('A', 'B', 'C'))

barplot(table(group))

