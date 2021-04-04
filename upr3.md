# Упражнение 3
## Задача 1

От данните "survey" На пакета "МАSS" определете средно Хn и стандартно отклонение Sn за височината на студентите.
```R
> summary(Height)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
  150.0   165.0   171.0   172.4   180.0   200.0      28 

mean(Height, na.rm=T)
[1] 172.3809

sd(Height, na.rm=T)
[1] 9.847528
```


Ще пресметнем само за мъжете
```R
 man=mean(Height[Sex=="Male"],na.rm=T)
> man
[1] 178.826

 sman=sd(Height[Sex=="Male"],na.rm=T)
> sman
[1] 8.380252
```

Направете отделни изчисления за мъжете и жените. 
Каква част от студентите попадат в интервалите:

а) (Хn-Sn,Xn+Sn)
```R
> h=Height[Sex=='Male']
> hm=mean(Height[Sex=="Male"],na.rm=T)
> hm
[1] 178.826
> sdman=sd(Height[Sex=="Male"],na.rm=T)
> sdman
[1] 8.380252
> table(cut(h,breaks=c(hm-sdman, hm+sdman)))
> (170,187] 
       70 
>  sum(! is.na(h))
[1] 106
> 70/106
[1] 0.6603774
```
b)(Xn-2Sn, Xn+2Sn)
```R
> table(cut(h,breaks=c(hm-2*sdman,hm+2*sdman)))

(162,196] 
      101 
> 101/106
[1] 0.9528302

```
в)(Xn-3Sn, Xn+3Sn)
```R
> table(cut(h,breaks=c(hm-3*sdman,hm+3*sdman)))

(154,204] 
      106 
> 106/106
[1] 1
```
