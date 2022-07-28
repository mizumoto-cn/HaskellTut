halve :: [a] -> ([a], [a])
halv xs = (take n xs, drop n xs)
  where n = length xs `div` 2
halveLet :: [a] -> ([a], [a])
halveLet xs = let n = length xs `div` 2
    in (take n xs, drop n xs)

halvePlus :: [a] -> ([a], [a])
halvePlus xs = splitAt n xs
  where n = length xs `div` 2
