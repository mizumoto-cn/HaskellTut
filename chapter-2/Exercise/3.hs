n = div a (length xs)
    where
        a = 10
        xs = [1..5]

main :: IO()
main = do
    print n