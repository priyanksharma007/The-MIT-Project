count = 1 # 2 is prime
number = 3
ans = 0


while count < 1000:
    divisor = 3
    
    isPrime = True
    while divisor < number:
        if (number % divisor == 0):
            isPrime = False
        divisor = divisor + 2
        
    if (isPrime):
        count = count + 1
        print("prime number " + str(count) + " is " + str(number))
        ans = number
        
    number = number + 2
        
print("1000-th prime number = ", ans)
    
    
    