-- cnt :: (Int, Int, Int) -> Int
-- cnt (0, y, z) = z
-- cnt (x, y, z) =
--     if x < y then cnt(0, y, z + 1)
--         else cnt(x - y, y, z + 1)
cnt :: (Int, Int) -> Int
cnt (x, y) = 
    if x `mod` y == 0 then (x `div` y)
        else (x `div` y) + 1

readMultiInt :: IO [Int]
readMultiInt = fmap (map read.words) getLine

main :: IO ()
main = do
    a <- readMultiInt
    print $ cnt(head a, last a) *  cnt(a !! 1, last a)


