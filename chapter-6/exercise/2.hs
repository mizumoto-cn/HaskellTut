sumdown :: Int -> Int
sumdown 0 = 0
sumdown n = n + sumdown (n-1)

main = do
    print (sumdown 10)
    print (sumdown 100)
    print (sumdown 1000)
    print (sumdown 10000)
    print (sumdown 100000)
    print (sumdown 1000000)
    print (sumdown 10000000)