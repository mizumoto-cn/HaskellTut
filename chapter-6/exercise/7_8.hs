recursiveMerge :: Ord a => [a] -> [a] -> [a]
recursiveMerge [] ys = ys
recursiveMerge xs [] = xs
recursiveMerge (x:xs) (y:ys)
    | x < y = x : recursiveMerge xs (y:ys)
    | otherwise = y : recursiveMerge (x:xs) ys

msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = recursiveMerge (msort left) (msort right)
    where
        (left, right) = splitAt (length xs `div` 2) xs