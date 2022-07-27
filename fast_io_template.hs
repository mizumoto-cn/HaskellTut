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

