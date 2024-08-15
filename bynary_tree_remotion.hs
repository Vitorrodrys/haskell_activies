data Tree = Empty | Branch Integer Tree Tree deriving (Show)



is_empty :: Tree -> Bool
is_empty Empty = True
is_empty (Branch a _ _) = False

helper_find_sucessor :: Tree -> Integer
helper_find_sucessor (Branch element Empty _) = element
helper_find_sucessor (Branch element left _) = helper_find_sucessor left

remove :: Tree -> Integer -> Tree
remove (Branch tree_data Empty Empty) element
    | tree_data == element = Empty
    | otherwise = Branch tree_data Empty Empty
remove (Branch tree_data Empty rigth) element
    | tree_data == element = rigth
    | element > tree_data = Branch tree_data Empty (remove rigth element)
    | otherwise = Branch tree_data Empty rigth

remove (Branch tree_data left Empty) element
    | tree_data == element = left
    | element < tree_data = Branch tree_data (remove left element) Empty
    | otherwise = Branch tree_data left Empty

remove (Branch tree_data left rigth) element
    | tree_data == element = Branch sucessor_element left (remove rigth sucessor_element)
    | element < tree_data = Branch tree_data (remove left element) rigth
    | element > tree_data = Branch tree_data left (remove rigth element)
    where
        sucessor_element = helper_find_sucessor rigth


testTree :: Tree
testTree = Branch 50 
                (Branch 30 
                    (Branch 20 
                        (Branch 10 Empty Empty) 
                        (Branch 25 Empty Empty)
                    )
                    (Branch 40 
                        Empty
                        (Branch 45 Empty Empty)
                    )
                )
                (Branch 70 
                    (Branch 60 
                        (Branch 55 Empty Empty) 
                        (Branch 65 Empty Empty)
                    )
                    (Branch 80 
                        (Branch 75 Empty Empty) 
                        (Branch 85 Empty Empty)
                    )
                )

-- Exemplo de remoção de um elemento não terminal
main = do
    let newTree = remove testTree 30
    print newTree