myLength list = if (null list) then 0 else 1 + (myLength (tail list))
main = print (myLength [34,2,4,6])