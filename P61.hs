data Tree = Empty | Branch Integer Tree Tree deriving (Show)


count_nodes :: Tree -> Integer

count_nodes Empty = 0
count_nodes (Branch _ left rigth) = (count_nodes left) + (count_nodes rigth) + 1


