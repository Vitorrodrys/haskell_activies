myLast list = if (tail list == []) then (head list) else (myLast (tail list))
main = print (myLast [])