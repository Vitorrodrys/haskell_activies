rotate_helper [] _ result1 result2 = result1 ++ result2
rotate_helper list index result1 result2 =
    if index == 0 then
        rotate_helper (tail list) index (result1 ++ [head list]) result2
    else
        rotate_helper (tail list) (index - 1) result1 (result2 ++ [head list])


rotate list index = 
    if index < 0 then
        rotate_helper list ((length list) + index) [] []
    else
        rotate_helper list index [] []


main = do
    print (rotate ['a','b','c','d','e','f','g','h'] 3)
    print (rotate ['a','b','c','d','e','f','g','h'] (-2))