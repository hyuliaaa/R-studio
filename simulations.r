# simulations - taks
  
  # task1
  # In a company of 20 workers, they decide to swap presents for Christmas
  # We have a box with 20 names, everyone takes a name without returning it
  # What is the probability that at least one person has taken its name;
  
  gifts = function(k) {
    x = sample(c(1:k), k, replace = F);
    d =  x - c(1:k);
    any(d==0);
  }
  # returns TRUE if at least one person has taken its name
  
  
  prob_gifts = function(n, k) {
    rs = replicate(n, gifts(k));
    
    sum(rs)/length(rs); 
  }
  
  #we repeat the experriment n number of times
  
  
  #task 2
  # What is the probability of a group of 25 people, to have at least two which have the same birthdays?
  birthday = function (k) {
    x = sample(c(1:365), k, replace = T);
    anyDuplicated(x) > 0;
  }
  
  same_birthdays_prob = function (n, k) {
    rs = replicate(n, birthday(k));
    sum(rs)/length(rs);
  }
  
  
  bw = function() {
    card = sample(c("bb", "ww", "bw"), 1);
    side = sample(c(1,2), 1);
    up = substring(card, side, side);
    c(up, card)
  }
  
  
  prob_to_be_white = function (n) {
      rs = replicate(n, bw());
      sum(rs[2,]=="ww") / sum(rs[1,]=="w")
  }
  
  
  # In a box we have 5 ball form 1 - 5. We take out one and we return it.
  # We again take out one ball
  # What is the probability of taking a same ball twice? 
  
  
  five_balls = function () {
    x = sample(c(1:5), 2, replace = T);
    x[1] == x[2];
  }
  
  prob_balls = function() {
    res = replicate(10000, five_balls())
    sum(res)/ length(res);
  }
  
  
  
  # in a box we have 3 different socks. We take out 2 sock.
  # what is the probability of them to be a pair
  
  socks = function() {
    x = sample(c(1:3), 2, replace = T);
    x[1]  == x[2];
  }
  
  prob.socks <- function(n) {
    res <- replicate( n, socks() )
    sum(res)/length(res) 
  }
  
  
  # Ivan has 5 keys, but does not know which key is for his room
  # He tries with every key sequentially and remebers his tries
  # What is the probability to unlock with the 5th key?
  sim.keys <- function() {
    x <- sample( c(1:5), 5, replace=F )
    x[5]==1  ## означаваме верният ключ с номер 1
  }
  
  prob.keys <- function(Nrep) {
    res <- replicate( Nrep, sim.keys() )
    sum(res)/length(res) 
  }
  
  prob.keys(100000)
  
  
  #Student goes to an exam with 20 questions, he knows only 3.
  # On the exam he takes two questions. What is the probability 
  # of him to know only one?
  
  exam = function() {
    questions = c(rep(0,3), rep(1,17));
    x = sample(questions, 2, replace = T);
    sum(x) == 0;
  }
  
  prob.exam <- function(Nrep) {
    res <- replicate( Nrep, exam() )
    sum(res)/length(res)
  }
  
  prob.exam(100000)
  
  
  
  # Ants
  
  ants = function() {
    a1 = sample(c(2,3), 1);
    a2 = sample(c(1,3), 1);
    a3 = sample(c(1,2), 1);
     length( unique( c(a1,a2,a3) ) ) == 3
     any( duplicated( c(a1,a2,a3) ) ) == F
  }
  
  
  
  prob.ants <- function(Nrep) {
    res <- replicate( Nrep, ants() )
    sum(res)/length(res)
  }
  
  prob.ants(100000)
  
  
  #in a box we have 2G and 2R balls
  # in another box we have 1G and 4R balls.
  # if we roll a dice and the result is 6 we take from 1st box, otherwise second
  
  #What is the probability to pull out a green ball
  balls = function() {
    dice = sample(c(1:6), 1, replace = F);
    if(dice == 6) {
      ball = sample( c("g", "g", "r", "r"), 1 )
    }
    else {
      ball = sample( c("g", "r", "r", "r", "r"), 1 )
    }
    
    ball == 'g';
  }
  
  a = function () {
    res <- replicate( 100000, balls() )
    sum(res)/length(res)
  }
  
  # if the taken ball is green, what is the probability to be from the second box?
  
  balls_two = function() {
    dice = sample(c(1:6), 1, replace = F);
    if(dice == 6) {
      ball = sample( c("g", "g", "r", "r"), 1 )
    }
    else {
      ball = sample( c("g", "r", "r", "r", "r"), 1 )
    }
    
    c(dice, ball);
  }
  
  b = function() {
    res = replicate(100000, balls_two());
    sum(res[1,]!="6" & res[2,]=="g") / sum(res[2,]=="g");
  }
  
  
  
  #coins - 11, 11, 22, 12,12
  # What is the probability to have 1?
  
  coins = function() {
     coin <- sample( c(11, 11, 22, 12, 12), 1 )
     if(coin == 12) {
       up = sample(c(1,2), 1);
       
     } else if(coin == 2) {
       up = 2;
     } else {
       up = 1;
     }
     
     up == 1;
  }
  
  a_coins = function () {
    res <- replicate( 100000, coins() )
    sum(res)/length(res)
  }
