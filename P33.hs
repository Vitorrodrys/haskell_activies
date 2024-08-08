greatest_common_divisor x 0 = x 
greatest_common_divisor x y = greatest_common_divisor y (mod x y)
    
coprime x y =
    (greatest_common_divisor x y) == 1

main = do
    print (coprime 35 64) -- True
    print (coprime 17 13) -- True
    print (coprime 17 21) -- True
    print (coprime 15 21) -- False
    print (coprime 25 45) -- False