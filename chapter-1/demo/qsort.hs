qsort [] = []
qsort (x:xs) = qsort lhs ++ [x] ++ qsort rhs -- ++ is list concatenation
    where
        lhs = [a | a <- xs, a <= x]
        rhs = [b | b <- xs, b > x]

main :: IO ()
main = do
    print $ qsort [1, 3, 5, 2, 4, 6]