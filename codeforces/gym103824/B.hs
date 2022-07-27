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
        parseLine = (map int) . B.words


cal :: IO()
cal = do
    [a, b] <- readIntPair

    if a * b < 40 then putStrLn "-1"
    else if a * b < 61 then putStrLn "0"
    else if a < b then
        print $ boo(a, b)
    else
        print $ boo(b, a)


boo :: (Int, Int) -> Int
boo (a, b)
  | a > 30 && a < 40 = if abs (b - 50) < 11 then 1 else 2
  | 60 < a = 2
  | otherwise = 1

solve :: Int -> IO ()
solve 1 = do cal
solve n = do
    cal
    solve (n - 1)

main :: IO ()
main = do
    n <- readInt
    solve n