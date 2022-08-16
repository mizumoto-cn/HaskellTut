-- exponentiation

(^!):: Int -> Int -> Int
x ^! 0 = 1
x ^! y = (x ^! (y - 1)) * x


main = do
    print $ 2 ^! 3