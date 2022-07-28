import Control.Monad
import Data.Char (GeneralCategory(Control))
import qualified Control.Monad as GHC.Base

testFunc x = 
    -- if x > 0 then print x else return ()
    Control.Monad.when (x > 0) $ print x

anotherTestFunc x
    | x > 0 = print x
    | otherwise = return ()

yetAnotherTestFunc x = when(x>0) $ -1 * x

(!=) :: Eq a => a -> a -> Bool
(!=) = (/=)

testFstA :: [Char] -> Bool
testFstA[] = False
testFstA(x:_) = x == 'a'

testFstB :: [Char] -> Bool
testFstB['b',_] = True
testFstB[] = False
testFstB(x:xs) = x == 'b' -- to avoid warning...

