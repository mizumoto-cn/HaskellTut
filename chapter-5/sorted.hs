pairs :: [a] -> [(a,a)]
pairs [] = []
pairs xs = zip xs (tail xs)

sorted :: Ord a => [a] -> Bool
sorted [] = True
sorted [x] = True
sorted xs = and [x <= y | (x,y) <- pairs xs]

position :: Eq a => a -> [a] -> Int
position x [] = -1
position x (y:ys)
    | x == y = 0
    | otherwise = 1 + position x ys

positions :: Eq a => a -> [a] -> [Int]
positions n xs = [i | (x,i) <- zip xs [0..], x == n]

