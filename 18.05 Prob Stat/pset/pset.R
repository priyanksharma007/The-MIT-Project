

# PSet-1 
# P3.e

getProbOfTwoPeopleShareBday = function(ndays_in_year, npeople, ntrials) {
  source('colMatches.r')
  
  estimated_prob = 0
  bdays = 1 : ndays_in_year
  
  y = sample(bdays, npeople*ntrials, replace=TRUE)
  x = matrix(y, npeople, ntrials)
  w = colMatches(x, 2)
  estimated_prob = mean(w)
  # These lines print out your answers
  cat('Problem 2a simulation results:','\n')
  cat('  Number of days in year =', ndays_in_year, '\n')
  cat('  Number of people =', npeople, '\n')
  cat('  Number of trials =', ntrials, '\n')
  cat('  Simulated probability of a match =', estimated_prob, '\n')
  return(estimated_prob)
}

simulateSharedBday = function(ndays_in_year, N, ntrials) {
  cat("----------------------------------\n")
  cat("Problem 3: Plot birthdays.\n")
  
  source('colMatches.r')
  
  # Do not change the above code.
  # ********* YOUR CODE BELOW HERE ***********
  npeople = 1:N
  prob = rep(0, N)
  
  ans = -1
  
  for (i in npeople) {
    estimated_prob = getProbOfTwoPeopleShareBday(ndays_in_year, i, ntrials)
    prob[i] = estimated_prob
    if (prob[i] >= 0.9 && ans < 0) {
      ans = i
    }
  }
  plot(npeople, prob, type='l', col="red", lwd=2)
  
  
  # The output is a graph
  cat('See plot\n')
  cat('npeople = ',ans, '\n')
  cat('estimated_prop = ', prob[ans], '\n')
  
  cat('actual ')
  
}

simulateSharedBday(365, 50, 10000)


#--------------------------------------




# P3.g
getProbOfThreePeopleShareBday = function(ndays_in_year, npeople, ntrials) {
  source('colMatches.r')
  
  estimated_prob = 0
  bdays = 1 : ndays_in_year
  
  y = sample(bdays, npeople*ntrials, replace=TRUE)
  x = matrix(y, npeople, ntrials)
  w = colMatches(x, 3)
  estimated_prob = mean(w)
  # These lines print out your answers
  cat('Problem 2a simulation results:','\n')
  cat('  Number of days in year =', ndays_in_year, '\n')
  cat('  Number of people =', npeople, '\n')
  cat('  Number of trials =', ntrials, '\n')
  cat('  Simulated probability of a match =', estimated_prob, '\n')
  return(estimated_prob)
}

simulateThreeSharedBday = function(ndays_in_year, N, ntrials) {
  cat("----------------------------------\n")
  cat("Problem 3: Plot birthdays.\n")
  
  source('colMatches.r')
  
  # Do not change the above code.
  # ********* YOUR CODE BELOW HERE ***********
  npeople = 1:N
  prob = rep(0, N)
  
  ans = -1
  
  for (i in npeople) {
    estimated_prob = getProbOfThreePeopleShareBday(ndays_in_year, i, ntrials)
    prob[i] = estimated_prob
    if (prob[i] >= 0.5 && ans < 0) {
      ans = i
    }
  }
  plot(npeople, prob, type='l', col="red", lwd=2)
  
  
  # The output is a graph
  cat('See plot\n')
  cat('npeople = ',ans, '\n')
  cat('estimated_prop = ', prob[23], '\n')
}

simulateThreeSharedBday(365, 100, 10000)



