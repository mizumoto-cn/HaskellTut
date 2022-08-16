fac :: Int -> Int
fac n 
    | n > 0 = n * fac (n - 1)
    | otherwise = 1 -- n == 0 1    
    -- noticed that without this line, the program will not terminate when n <= 0