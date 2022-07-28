returnFunc :: (Int -> Int)
returnFunc x = 2 * x

myAdd :: Int -> Int -> Int
myAdd = \x -> \y -> x + y -- lambda function \x -> (\y -> x + y)

-- odds finds the odd numbers from 1 to n
odds :: Int -> [Int]
odds n = [x | x <- [1..n], odd x]

oddsLambda :: Int -> [Int]
oddsLambda n = map (\x -> x * 2 + 1) [1..n]
-- map f [x1, x2, ..., xn] == [f x1, f x2, ..., f xn]
-- map f [x1, x2, ...] == [f x1, f x2, ...]

main = do 
    print $ returnFunc 2
    let double_x = \x -> 2 * x + 2 -- lambda function
    print $ double_x 2
    print $ myAdd 2 3
