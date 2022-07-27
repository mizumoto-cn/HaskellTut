mylast :: [a] -> a
mylast = head . reverse


main :: IO ()
main = do
    print $ mylast [1,2,3,4,5]