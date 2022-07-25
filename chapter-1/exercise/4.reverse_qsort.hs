rev_qsort :: Ord a => [a] -> [a]
rev_qsort [] = []
rev_qsort (x:xs) = rev_qsort lhs ++ [x] ++ rev_qsort rhs
    where
        lhs = [ x | x <- xs, x <= x ]
        rhs = [ x | x <- xs, x > x ]

main :: IO()
main = do
    print $ rev_qsort [1,2,3,4,5,6,7,8,9,10]