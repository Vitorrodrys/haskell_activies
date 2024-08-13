data Tree = Empty | Branch Integer Tree Tree deriving (Show)


is_empty :: Tree -> Bool
is_empty Empty = True
is_empty (Branch a _ _) = False

insert :: Tree -> Integer -> Tree

insert (Branch tree_data left rigth) element
    | element < tree_data && (is_empty left) = Branch tree_data (Branch element Empty Empty) rigth
    | element > tree_data && (is_empty rigth) = Branch tree_data left (Branch element Empty Empty)
    | element < tree_data = (Branch tree_data (insert left element) rigth)
    | element > tree_data = (Branch tree_data left (insert rigth element))
    | otherwise = Branch tree_data left rigth

construct :: [Integer] -> Tree -> Tree
construct [] tree = tree
construct (x:xs) tree =
    insert (construct xs tree) x

main = print (construct [1,2,4,5,1,6] (Branch 3 Empty Empty))