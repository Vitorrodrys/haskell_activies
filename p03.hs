elementAt list index = if (index == 1) then (head list) else (elementAt (tail list) (index-1))
main = print (elementAt [1,2,3,4,2342] 3)