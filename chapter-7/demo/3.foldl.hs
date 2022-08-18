-- f v [] = v
-- f v (x:xs) = f (v # x) xs

-- =>

-- f = foldl (#) v

-- take sum for example

sumFoldr :: Num a => [a] -> a
sumFoldr = foldr (+) 0

-- f [] = v
-- f (x:xs) = x # f xs

sumFoldl :: Num a => [a] -> a
sumFoldl = foldl (+) 0

-- f v [] = v
-- f v (x:xs) = f (v # x) xs


-- so what is the difference between foldr and foldl?
-- foldr is a right fold, foldl is a left fold
-- There's a difference if your function isn't associative 
-- (i.e. it matters which way you bracket expressions) so for example,
--
-- foldr (-) 0 [1..10] = -5 but foldl (-) 0 [1..10] = -55.
-- 
-- This is because the former is equal to 1-(2-(3-(4-(5-(6-(7-(8-(9-(10 - 0))))))))), 
-- whereas the latter is (((((((((0-1)-2)-3)-4)-5)-6)-7)-8)-9)-10.

-- Whereas because (+) is associative (doesn't matter what order you add subexpressions),
-- foldr (+) 0 [1..10] = 55 and foldl (+) 0 [1..10] = 55. (++) is another associative operation because xs ++ (ys ++ zs) gives the same answer as (xs ++ ys) ++ zs (although the first one is faster - don't use foldl (++)).

-- Some functions only work one way:
-- foldr (:) :: [a] -> [a] -> [a] but foldl (:) is nonsense.