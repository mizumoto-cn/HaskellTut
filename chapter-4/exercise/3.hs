safeTailConditional :: [a] -> [a]
safeTailConditional a = 
    if null a
        then []
        else tail a

safeTailGuardedEquation :: [a] -> [a]
safeTailGuardedEquation a
    | null a = []
    | otherwise = tail a

safeTailPatternMatching :: [a] -> [a]
safeTailPatternMatching [] = []
safeTailPatternMatching (x:xs) = xs


main = do 
    print $ safeTailConditional [1,2,3]
    print $ safeTailConditional [1]
    print $ null $ safeTailConditional []
    print $ safeTailGuardedEquation [1,2,3]
    print $ safeTailGuardedEquation [1]
    print $ null $ safeTailGuardedEquation []
    print $ safeTailPatternMatching [1,2,3]
    print $ safeTailPatternMatching [1]
    print $ null $ safeTailPatternMatching []