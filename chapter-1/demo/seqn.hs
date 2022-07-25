seqn :: Monad m => [m a] -> m [a]
seqn [] = return []
seqn (x:xs) = do
  x' <- x
  xs' <- seqn xs
  return (x':xs')

main :: IO()
main = do
    seqn [getLine, getLine, getLine] >>= print