demoMap :: (a->b) -> [a] -> [b]
demoMap f [] = []
demoMap f xs = [f x | x <- xs]

demoFilter :: (a->Bool) -> [a] -> [a]
demoFilter p [] = []
demoFilter p xs = [x | x <- xs, p x]

sumSqrEven :: [Int] -> Int
sumSqrEven xs = sum $ map (^2) $ demoFilter even xs

main = do
    print $ demoFilter odd [1..10]
    print $ sumSqrEven [1..10]
