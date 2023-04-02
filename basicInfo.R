x <- 12 #initialization of variable

#VECTORS

#initialization of a vector
v <-c(5,3,2,4)
v1 = c(2,3,4,5)
v+v #2 4 6
v[1]  # value of element at index 1 (5)
v [c (1,3 )]  #returns elements on these indeces (5 ,2)
v [-c (1,3 )] #returns elements not on these indeces (3,4)
v [1:3] #returns elements at positions 1 to 3 (5 3 2)


v >3 # returns T F F T (for every element of the array returns boolean values)
v [v >3] # returns the elements in the vector which are > 3 (5 4)

sort(v) #sorts the vector

order (v) #returns the indeces that show how to index the vector to be sorted (3 2 4 1)

v[order (v)] #returns sorted vector
max(v) #returns max element
mean (v) #returns sredno aritmetichno
which.max(v) # gives the index of the biggest element
which (v >3) # дава индексите на елементите > 3
v [which (v >3)]  # дава елементите, отговарящи на условието


# MATRICES



m <-matrix (data = c(1:9), nrow=3 , ncol=3, byrow=TRUE) # byrow=T matrix is filled by rows

m[2,2] #gives element in sec row and sec col which is 5

m[ ,2] # returns col 2
m[1 , ] # returns row 1

m[c (1,2), ] #returns 1 and 2 row


rownames(m) <- c("a","b","c") # gives names to rows


cbind(m , 5:7) #закачаме колона със ст-ти от 5 до 7



#data frames
x = c(5, 8, 11, 3, 2, 9, 4);
y = c("Y", "Y", "N", "Y", "N", "N", "Y");

df = data.frame(x,y);


str(df); # returns the str of the dataframe

df$x; # returns x vector of df
df$x[4]; # returns the 4th element of x which is 3


df[ ,2] # return the values of second column [1] "Y", "Y", "N", "Y", "N", "N", "Y"

df[2,] # returns the second row with both values of x and y   
#  x y
#2 8 Y

df$z = seq(from=1, to=14, by=2) # adds another column to the data frame 

df[ 3, c("x","z") ] # returns the third row of df
#  x z
#3 11 5


df[ c(5,7), c(2,3) ]
#  y z
#  5 N 9
#  7 Y 13


df$x[ df$z <= 5 ] # returns the values of x column which meet the condition about z



df[ df$z <= 5, c("x","z") ]
#   x z
#1  5 1
#2  8 3
#3 11 5
