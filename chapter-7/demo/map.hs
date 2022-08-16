demoMap :: (a->b) -> [a] -> [b]
demoMap f [] = []
demoMap f xs = [f x | x <- xs]

demoFilter :: (a->Bool) -> [a] -> [a]
demoFilter p [] = []
demoFilter p xs = [x | x <- xs, p x]

main = do
    print $ demoFilter odd [1..10]
