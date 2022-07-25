qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort lhs ++ [x] ++ qsort rhs
  where
    lhs = filter (< x) xs
    rhs = filter (>= x) xs

main :: IO ()
main = do
  print $ qsort [1,9,3,8,5,7,6,4,2]
  print $ qsort ["a","i","b","h","e","f","d","g","c"]