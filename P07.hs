
data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (Elem a) = [a]                -- Se for um elemento, retorne uma lista com esse único elemento
flatten (List []) = []                -- Se for uma lista vazia, retorne uma lista vazia
flatten (List (x:xs)) = flatten x ++ flatten (List xs)
-- Para uma lista não vazia, achate o primeiro elemento e depois os elementos restantes

main = print (flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]))
