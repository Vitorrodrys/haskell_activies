import P10 (pack)

data CompressedElement = Single Char | Tuple Char Integer deriving (Show)
helper_remove_single_elements :: [(Char, Integer)] -> [CompressedElement]
helper_remove_single_elements [] = []
helper_remove_single_elements ((element, quantity):elements) = 
    if quantity == 1 then (Single element):helper_remove_single_elements elements else (Tuple element quantity):(helper_remove_single_elements elements)

remove_single_elements list_elements = helper_remove_single_elements (pack list_elements)


main = print(remove_single_elements "aaaabaafffvvv")
