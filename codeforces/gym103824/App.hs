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
    if a > b
        then putStrLn  $ show (a + b) ++ " " ++ show (2 * a + b)
        else putStrLn $ show (a + b) ++ " " ++ show (a + 2 * b)


solve :: Int -> IO ()
solve 1 = do cal
solve n = do 
    cal
    solve (n - 1)

main :: IO ()
main = do
    n <- readInt
    solve n