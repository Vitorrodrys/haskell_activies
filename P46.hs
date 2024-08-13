not' :: Bool -> Bool
and', or', nand', xor', impl', equ' :: Bool -> Bool -> Bool

and' = (&&)
or' = (||)
equ' = (==)

not' True = False
not' False = True

xor' True False = True
xor' False True = True
xor' True True = False
xor' False False = False

nand' x y = not' (and' x y)

nor' x y = not' (or' x y) 

impl' True False = False
impl' _ _ = True

table :: (Bool -> Bool -> Bool) -> IO ()
table function = 
    putStrLn $ concatMap (++ "\n" ) [show a ++ " " ++ show b ++ " " ++ show (function a b) | a <- [True, False], b <- [True, False] ]

main = table (\a b -> a `and'` (a `or'` not b))