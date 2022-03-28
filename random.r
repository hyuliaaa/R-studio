length(Aids2$death[Aids2$status=='D'])
[1] 1761
x=Aids2$age[Aids2$T.categ[state=='NSW'] == 'blood']
wilcox.test(x,conf.int=T,conf.level = 0.90)
 


sum(Aids2$status=='D')
#определете пола на първите 5-ма диагностицирани със спин
Aids2[order(Aids2$diag)[1:5],]
#каква част от мъжете са се заразили по кръвен път
t=table(T.categ[sex=='M'])
prop.table(t)
  
#Направете подходяща графика, която да отразява връзката на смъртността и щатът,
#в който живеят пациентите.

r=table(status,state)
pt = prop.table(r, 2)
barplot(pt,beside=T,legend=T)

# 
# 
# Хипотеза H0: Pж = Pм (Вероятността смъртността при жените да е същата като тази при мъжете)
# Алтернатива H1: Pж < Рм (Вероятността смъртността при жените да е по-ниска)
# prop.test(x, n, alternative = ‘less’), където:
#   x – вектор с успешни опити – бр. починали жени и бр. починали мъже
# n – вектор с всички опити – бр. жени общо и бр. мъже общо

prop.test(x = c(53, 1708), n = c(89, 2754), alternative = 'less')
prop.test(x = c(38,100), n = c(100,200),alternative='greater', conf.level=0.01)


> d<-data.frame(anscombe$x3,anscombe$y3)
> plot(d)
> plot(anscombe$x3,anscombe$y3)
> l=lm(anscombe$y3~anscombe$x3)
> abline(l)
> cor(anscombe$x3,anscombe$y3)
[1] 0.8162867

> s=summary(l)
> s

Call:
  lm(formula = anscombe$y3 ~ anscombe$x3)

Residuals:
  Min      1Q  Median      3Q     Max 
-1.1586 -0.6146 -0.2303  0.1540  3.2411 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)   
(Intercept)   3.0025     1.1245   2.670  0.02562 * 
  anscombe$x3   0.4997     0.1179   4.239  0.00218 **
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.236 on 9 degrees of freedom
Multiple R-squared:  0.6663,	Adjusted R-squared:  0.6292 
F-statistic: 17.97 on 1 and 9 DF,  p-value: 0.002176

boxplot(d)
> boxplot(d)$out
[1] 12.74
> boxplot(d, plot=FALSE)$out
[1] 12.74
> o=boxplot(d, plot=FALSE)$out
>  x<-d
> x<-x[-which(x %in% o)]
> s


> x<-x[!x %in% o]
> xc



# Now you can assign the outlier values into a vector

outliers <- boxplot(mtcars$disp, plot=FALSE)$out

# Check the results

print(outliers)


# First you need find in which rows the outliers are

mtcars[which(mtcars$disp %in% outliers),]



# Now you can remove the rows containing the outliers, one possible option is:

mtcars <- mtcars[-which(mtcars$disp %in% outliers),]

# If you check now with boxplot, you will notice that those pesky outliers are gone

boxplot(mtcars$disp)

rgeom(100,1/10) - geom razp br neusoehi do uspeh
