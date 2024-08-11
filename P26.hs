module P26 (combinations) where
import Data.List (tails)


combinations :: Int -> [a] -> [[a]]
combinations 0 _  = [ [] ]
combinations n xs = [ y:ys | y:xs' <- tails xs
                           , ys <- combinations (n-1) xs']

main :: IO ()
main = print (combinations 3 "abcdef")