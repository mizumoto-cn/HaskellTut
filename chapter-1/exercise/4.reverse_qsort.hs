revQsort :: Ord a => [a] -> [a]
revQsort [] = []
revQsort (x:xs) = revQsort lhs ++ [x] ++ revQsort rhs
    where
        lhs = [ a | a <- xs, x <= a ]
        rhs = [ a | a <- xs, x > a ]

main :: IO()
main = do
    print $ revQsort [1,2,3,4,5,6,7,8,9,10]