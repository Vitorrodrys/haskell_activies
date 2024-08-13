-- verifica se um item está presente em uma lista
contains item [] = False
contains item list = if (head list) == item then True else contains (item) (tail list)

-- comprime uma lista
compress list acc =
    if (null list) then -- caso base
        acc
    else
        if contains (head list) acc then
            compress (tail list) acc
        else
            compress (tail list) (acc ++ [head list])

main = do 
    print (compress "avabbbbccccaacbbertysrg" "")
    print (compress [1,2,3,4,4,4,767,23,34,2,2] [])