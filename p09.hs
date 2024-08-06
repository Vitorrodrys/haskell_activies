myConcat :: Eq a => a -> [[a]] -> [[a]]
myConcat b [] = [[b]]
myConcat b (x:xs) = if b == head x then (b:x):xs else [b]:x:xs

pack :: [Integer] -> [[Integer]]
pack [] = []
pack (x:xs) = myConcat x (pack xs)


main = print( pack [1,1,1,2,2,2,4,4,4])

