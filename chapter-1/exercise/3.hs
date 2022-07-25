myproduct :: [Int] -> Int
myproduct [] = 1
myproduct (x:xs) = x * myproduct xs

main :: IO ()
main = do
    print $ myproduct [2,3,4]