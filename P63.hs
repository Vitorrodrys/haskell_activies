data Tree = Empty | Branch Integer Tree Tree deriving (Show)


collect_at_level :: Tree -> Integer -> [Integer]
collect_at_level (Branch tree_data _ _) 0 = [tree_data]
collect_at_level (Branch _ left rigth) level =
    (collect_at_level left (level-1)) ++ (collect_at_level rigth (level-1))



main = print (collect_at_level (Branch 2 (Branch 3 Empty Empty) (Branch 3 Empty Empty )) 1)