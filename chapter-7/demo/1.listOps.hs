main = do
    print $ all even [1,2,3,4,5]
    print $ any odd [1,2,3,4,5]
    print $ takeWhile odd  [1,2,3,4,5]
    print $ dropWhile odd  [1,2,3,4,5]