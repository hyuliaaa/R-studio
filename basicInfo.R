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



