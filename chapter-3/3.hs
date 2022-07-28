mySecond :: [a] -> a
mySecond xs = head $ tail xs

palindrome :: (Eq a) => [a] -> Bool
palindrome xs = xs == reverse xs

-- twice performs the function twice
twice :: (a -> a) -> a -> a
twice f x = f (f x)


main = do
    print $ mySecond [1,2,3,4,5]