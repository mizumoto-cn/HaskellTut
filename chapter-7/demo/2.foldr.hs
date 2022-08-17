-- f [] = v
-- f (x:xs) = x # f xs

-- f [] = v
-- f = foldr (#) v

-- v :: a -> b -> b
-- where a represents a element of the list [a]
-- and b represents the result of the fold, that is, the accumulator

-- foldr            :: (a -> b -> b) -> b -> [a] -> b
-- foldr _ z []     =  z
-- foldr f z (x:xs) =  f x (foldr f z xs)

-- foldr k z = go
--           where
--             go []     = z
--             go (y:ys) = y `k` go ys

-- foldr length

myLength :: [a] -> Integer
myLength = foldr plus1 0

plus1 :: Num  b => a -> b -> b
plus1  _ n = n + 1

myLenLambda :: [a] -> Integer
myLenLambda = foldr (\_ n -> n + 1) 0

-- reverse?
reverse :: [a] -> [a]
reverse = foldr (\x xs -> xs ++ [x]) []