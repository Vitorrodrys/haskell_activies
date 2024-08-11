
split :: [a] -> Int -> ([a], [a])
split [] _ = ([], [])
split (x:xs) counter
    | counter `mod` 2 == 0 = (x:left, right)
    | otherwise = (left, x:right)
    where
        (left, right) = split xs (counter + 1)
insert :: [a] -> [[a]] -> [[a]]
insert x [] = [x]
insert x (er:ers) = 
    if length x > length er
        then er:(insert x ers)
        else x:er:ers

sort :: [[a]] -> [[a]] -> [[a]]
sort [] right = right
sort (x:xs) right = sort xs (insert x right)

merge_sort :: [[a]] -> [[a]]
merge_sort [a] = [a]
merge_sort list = 
    sort left_sorted right_sorted 
    where
        (left, right) = split list 0
        left_sorted = merge_sort left
        right_sorted = merge_sort right


main :: IO ()
main = print (merge_sort [[1, 2, 3], [1, 2], [1, 2, 3, 4], [1], [1, 2, 3, 4, 5], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6, 7], [1, 2, 3, 4, 5, 6, 7, 8], [1, 2, 3, 4, 5, 6, 7, 8, 9], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]])