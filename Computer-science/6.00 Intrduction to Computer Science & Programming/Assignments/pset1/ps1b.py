import math
import matplotlib.pyplot as plt


# p1.p2.p3.....pn <= e^n

n = int(input("Enter n:\n"))


count = 1 # 2 is prime
number = 2
logsum = 0


y = []
x = []
while (number <= n):
    isPrime = True
    divisor = 2
    while divisor < number:
        if (number % divisor == 0):
            isPrime = False
            break
        divisor = divisor + 1
        
    if (isPrime):
        print("prime ", count, " = ", number, math.log(number))
        y.append(logsum)
        x.append(number)
        logsum += math.log(number)
        count = count + 1
    number += 1
    




print("sum of logs = ", logsum)
print("n = ", n)
print("Ratio = ", logsum / n)        


    