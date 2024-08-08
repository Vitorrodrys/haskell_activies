myButLast list = if (tail (tail list)) == [] then (head list) else myButLast (tail list)
main = print (myButLast [1,2,3,4])