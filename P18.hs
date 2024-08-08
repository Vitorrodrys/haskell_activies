slice_helper [] _ _ _ result = result
slice_helper list start end actual_index result =
    if actual_index >= start && actual_index <= end then
        slice_helper (tail list) start end (actual_index+1) (result ++ [head list])
    else
        slice_helper (tail list) start end (actual_index+1) result

slice list start end = slice_helper list start end 1 []

main = do
    print (slice [1,2,3,4,5,6,7,8,9,10] 3 7)
    print (slice ['a','b','c','d','e','f','g','h','i','k'] 3 7)
