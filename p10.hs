-- verifica se um item está presente em uma lista
contains item [] = False
contains item list = if (head list) == item then True else contains (item) (tail list)

-- pega um item em uma posição específica de uma lista
elementAt list index = if (index == 1) then (head list) else (elementAt (tail list) (index-1))

pack_helper [] a c = c
pack_helper list search_item result =
    -- se o item buscado é o item do inicio da linha então é so adicionar o item
    if (head list) == search_item then
        -- adiciona o item na lista de resultado pois a lista de resultado é vazia
        if null result then
            pack_helper (tail list) search_item (result ++ [(search_item, 1)])
        -- como já havia um item assim na lista de resultado, então apenas o incremente o valor em 1
        else if fst (last result) == search_item then -- adiciona
            pack_helper (tail list) search_item ((init result) ++ [(search_item, (snd (last result) + 1))])
        -- como o item não havia na lista de resultado, então o adiciona na lista de resultado
        else
            pack_helper (tail list) search_item (result ++ [(search_item, 1)])
    -- como o item a ser buscado mudou, mas ainda existia inicialmente na lista de resultado, então é adicionado na lista
    -- de resultado o item anterior que se buscava, contudo o novo item de busca agora é trocado
    else
        pack_helper (tail list) (head list) (result ++ [((head list), 1)])

pack list = pack_helper list (head list) []

main = print(pack "aaaabbaafffvvv")