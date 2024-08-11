import P26 (combinations)


generate_peoples_combinations :: [Int] -> [String] -> [[String]]
generate_peoples_combinations [] _ = []
generate_peoples_combinations (x:xs) peoplesList = generate_peoples_combinations xs peoplesList ++ combinations x peoplesList

main :: IO ()
main = print (generate_peoples_combinations [2, 3] ["vitor", "aegaeg", "Cageeag", "arthur", "Eaegeag"])