myConcat :: Eq a => a -> [[a]] -> [[a]]
myConcat b [] = [[b]]
myConcat b (x:xs)
    | b == head x = (b:x):xs
    | otherwise = [b]:x:xs

pack :: [Integer] -> [[Integer]]
pack [] = []
pack (x:xs) = myConcat x (pack xs)


main = print( pack [1,1,1,2,2,2,4,4,4])

