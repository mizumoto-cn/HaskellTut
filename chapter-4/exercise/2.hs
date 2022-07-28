thirdUsingHeadTail :: [a] -> a
thirdUsingHeadTail xs = head (tail (tail xs))

thirdUsingIndexing :: [a] -> a
thirdUsingIndexing xs = xs !! 2

thirdUsingPatternMatching :: [a] -> a
thirdUsingPatternMatching (_:_:x:_) = x
thirdUsingPatternMatching [] = error "empty list"
thirdUsingPatternMatching [_] = error "one element list"
thirdUsingPatternMatching [_, _] = error "two element list"
