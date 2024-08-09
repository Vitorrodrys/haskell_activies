insert_at :: [a] -> a -> Integer -> [a]

insert_at [] element _ = error "Index out of bounds"
insert_at (x:tail_iterable) element index
    | index == 0 = element:x:tail_iterable
    | otherwise = x:(insert_at tail_iterable element (index - 1))
