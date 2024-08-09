import P11 (remove_single_elements, CompressedElement(Single, Tuple))

decompress :: Char -> Integer -> String
decompress element quantity
    | quantity == 1 = element:""
    | otherwise = element : (decompress element (quantity - 1))

uncompress :: [CompressedElement] -> String
uncompress [] = ""
uncompress ((Single element):xs) = 
    element : (uncompress xs)
uncompress ((Tuple element quantity):xs) =  
    (decompress element quantity) ++ (uncompress xs)

main = print ( uncompress (remove_single_elements "aaaabaafffvvv")) -- "aaaabaafffvvv"