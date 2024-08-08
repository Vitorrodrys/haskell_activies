import P31 (isPrime)

primesR number1 number2 = 
    if number1 > number2 then 
        [] 
    else
        filter isPrime [number1..number2]

main = do
    print (primesR 10 20)
    print (primesR 49980 50000)
    print (primesR 20 10)