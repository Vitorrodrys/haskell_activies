data Tree = Empty | Branch Integer Tree Tree deriving (Show)


collect_leaves :: Tree -> [Integer]
collect_leaves Empty = []
collect_leaves (Branch three_data Empty Empty) = [three_data]
collect_leaves (Branch _ left rigth) = (collect_leaves left) ++ (collect_leaves rigth)

main = print (collect_leaves (Branch 2 (Branch 1 Empty Empty) (Branch 3 Empty (Branch 4 Empty Empty))))