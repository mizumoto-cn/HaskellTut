gcd :: Int -> Int -> Int
gcd a b
  | a == 0 = b
  | b == 0 = a
  | a > b = Main.gcd (a - b) b
  | otherwise = Main.gcd a (b - a)

main :: IO ()
main = do
    print $ Main.gcd 36 63
    print $ Main.gcd 36 36
    print $ Main.gcd 36 0
    print $ Main.gcd 6 27