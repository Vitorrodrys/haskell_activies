dupli_helper [] result = result
dupli_helper list result = dupli_helper (tail list) (result ++ [head list, head list]) 

dupli [] = [] 
dupli list = dupli_helper list []

main = print (dupli [1,2,3])