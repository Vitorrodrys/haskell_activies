type Graph = ([Int], [(Int, Int)])


helper_check_sinkhole :: Graph -> Int -> Bool
helper_check_sinkhole (_, edges) element = 
    null edges_leaving_her
    where
        edges_leaving_her = [(a, b) | (a, b) <- edges, a == element]

find_sinkhole_vertex :: Graph -> Int
find_sinkhole_vertex (v, e)
    | null sinkhole = -1
    | otherwise = head sinkhole
    where
        sinkhole = [x | x <- v, helper_check_sinkhole (v, e) x]


remove_sinkhole_vertex :: Graph -> Int -> Graph
remove_sinkhole_vertex (v, e) element =
    (v', e')
    where
        v' = [ x | x <- v, x /= element]
        e' = [ (x, y) | (x, y) <- e, x /= element && y /= element]


has_cicles :: Graph -> Bool
has_cicles ([], []) = False
has_cicles graph
    | sink /= -1 = has_cicles (remove_sinkhole_vertex graph sink)
    | otherwise = True
    where
        sink = find_sinkhole_vertex graph

main = print (has_cicles ([2, 3], [(2, 3)])) -- False

