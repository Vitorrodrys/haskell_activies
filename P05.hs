myReverse strOrList = if null strOrList then [] else (myReverse (tail strOrList))++[(head strOrList)]
main = print (myReverse [1,2,3])
-- main = print (myReverse "1234")