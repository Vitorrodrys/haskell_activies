import P10 (pack)


helper_remove_single_elements :: [(a, Integer)] -> [(a, Integer)]
helper_remove_single_elements [] = []
helper_remove_single_elements ((element, quantity):elements) = 
    if quantity == 1 then helper_remove_single_elements elements else (element, quantity):(helper_remove_single_elements elements)

remove_single_elements list_elements = helper_remove_single_elements (pack list_elements)


main = print(remove_single_elements "aaaabaafffvvv")
