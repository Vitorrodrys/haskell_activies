split_helper [] index result1 result2 = (result1, result2)
split_helper list index result1 result2 =
    if not (index == 0) then
        split_helper (tail list) (index-1) (result1 ++ [head list]) result2
    else 
        split_helper (tail list) index result1 (result2 ++ [head list])
    

split list index = split_helper list index [] []

main = do 
    print(split "abcdefghik" 3)
    print(split "abcdefghik" 0)
    print(split "abcdefghik" 10)
    print(split "" 0)
    print(split "" 23)
