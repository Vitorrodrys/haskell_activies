dropEvery_helper [] multiple_index actual_index result = result
dropEvery_helper list multiple_index actual_index result =
    if (mod actual_index multiple_index) == 0 then
        dropEvery_helper (tail list) multiple_index (actual_index+1) result
    else
        dropEvery_helper (tail list) multiple_index (actual_index+1) (result ++ [head list])


dropEvery list multiple_index = 
    dropEvery_helper list multiple_index 1 []


main = do 
    print (dropEvery "abcdefghik" 3)
    print (dropEvery [1,2,3,4,5,6,7,8,9,10] 4)
    print (dropEvery "" 5)
    print (dropEvery "abc" 5)
    print (dropEvery "abcdefghik" 2)
