-- https://codeforces.com/gym/103824 A

readMultiInt :: IO [Int]
readMultiInt = fmap (map read.words) getLine

solve :: Int -> IO()
solve 1 = do
    -- print nums from list
    temp <- cal
    let base = head temp + last temp
    let nums = [base + head temp, base]
    putStrLn $ unwords $ map show nums
solve n = do
    temp <- cal
    let base = head temp + last temp
    let nums = [base + head temp, base]
    putStrLn $ unwords $ map show nums
    solve (n-1)

cal :: IO [Int]
cal = do
    let a = readMultiInt
    ary <- a
    if head ary > last ary then
        return ary
    else
        return $ reverse ary

main :: IO ()
main = do
    input <- getLine
    let n = (read input :: Int)
    solve n