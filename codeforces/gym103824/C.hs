import Control.Applicative
import Control.Monad
import Data.Array
import Data.Maybe
import Data.Time.Clock
import System.IO
import Text.Printf

import qualified Data.ByteString.Char8 as B

int = fst . fromJust . B.readInt

readInt :: IO Int
readInt = int <$> B.getLine

readIntPair :: IO [Int]
readIntPair = parseLine <$> B.getLine
    where
        parseLine = map int . B.words

main = do
    [n, k] <- readIntPair
    [l, r] <- readIntPair
    p <- readIntPair
    let ans = solve (0:p) n
    print $ abs $ k - ans
    -- print ans
    -- print $ show(0:p)

solve :: [Int] -> Int -> Int
solve p n = cal p n 0

swapElementsAt :: Int -> Int -> [a] -> [a]
swapElementsAt i j xs = let elemI = xs !! i
                            elemJ = xs !! j
                            left = take i xs
                            middle = take (j - i - 1) (drop (i + 1) xs)
                            right = drop (j + 1) xs
                    in  left ++ [elemJ] ++ middle ++ [elemI] ++ right

cal :: [Int] -> Int -> Int -> Int
cal p 1 ans =
    if (p!!1) == 1 then ans
    else -1
cal p n ans = 
    if (p !! n) == n then
        cal p (n - 1) ans
    else
        -- swap nth and p !! nth
        let p' = swapElementsAt n (p !! n) p
        in cal p' (n - 1) (ans + 1)

        