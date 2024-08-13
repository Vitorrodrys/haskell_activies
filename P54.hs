data Tree a = Empty | Branch a (Tree a) (Tree a) deriving (Show, Eq)

is_binary :: (Ord a) => Tree a -> Bool

is_binary Empty = True
is_binary (Branch _ Empty Empty) = True
is_binary (Branch a (Branch b bleft brigth) (Branch c cleft crigth)) = 
    (b <= a) && (c >= a) && is_binary (Branch b bleft brigth) && is_binary (Branch c cleft crigth)
is_binary (Branch a Empty (Branch c cleft crigth)) =
    c >= a && is_binary (Branch c cleft crigth)
is_binary (Branch a (Branch b bleft brigth) Empty) =
    b <= a && is_binary (Branch b bleft brigth)


main = print ( is_binary (Branch 5 (Branch 4 Empty Empty) (Branch 7 Empty Empty)) )

