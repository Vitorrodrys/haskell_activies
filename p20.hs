removeAt_helper index [] acc = ((head acc), (tail acc))
removeAt_helper index list acc =
    if index == 0 then
        removeAt_helper (index-1) (tail list) ([head list] ++ acc)
    else
        removeAt_helper (index-1) (tail list) (acc ++ [head list])


removeAt index list =
    removeAt_helper (index-1) list []

main = do
    print (removeAt 2 "abcd")
    print (removeAt 2 [1,2,3,4,5])
