and :: [Bool] -> Bool
and = foldr (&&) True

concat :: [[a]] -> [a]
concat = foldr (++) []

replicate :: Int -> a -> [a]
replicate n x = foldr (const (x :)) [] [1..n]

(!!) :: [a] -> Int -> a
(!!) [] _ = error "Index out of bounds"
(!!) (x:xs) 0 = x
(!!) (x:xs) n = (Main.!!) xs (n - 1)

elem :: Eq a => a -> [a] -> Bool
elem x xs = any (== x) xs

main = do
    print $ Main.and [True, False, True]