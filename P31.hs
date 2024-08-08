module P31 (isPrime) where 

isPrime_helper number testing = 
    if testing <= 1 then
        True
    else 
        if (mod number testing) == 0 then
            False
        else
            isPrime_helper number (testing-1) 

isPrime number = 
    if number < 1 then 
        False 
    else
        isPrime_helper number (number-1)

main = do
    print (isPrime 1)    
    print (isPrime 2)
    print (isPrime 3)    
    print (isPrime 5)    
    print (isPrime 7)
    print (isPrime 7793)
    print (isPrime 4)
    print (isPrime 8)
    print (isPrime 0)