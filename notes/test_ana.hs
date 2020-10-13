import System.Environment
-- Let's first define types (structures):

data Fix f = MkFix {unFix :: f (Fix f)}
-- MkFix :: f (Fix f) -> Fix f
-- unFix :: Fix f -> f (Fix f)

data St a = Cons Int a deriving Show
instance Functor St where
  fmap f (Cons n a) = Cons n (f a)

type StmInt = Fix St

showStInt:: Int -> StmInt -> [Int]
showStInt 0 _ = []
showStInt n (MkFix (Cons a b)) = a : (showStInt (n-1) b)

ana :: Functor f => (a -> f a) -> a -> Fix f
ana coalg = MkFix . fmap (ana coalg) . coalg

-- First let's reconstruct the naturals:

naturals :: Int -> StmInt
naturals = ana coalg where
  coalg n = (Cons n  (n+1))


fibo :: (Int,Int) -> StmInt
fibo = ana coalg where
  coalg (n,m) = (Cons m (m,n+m))

main :: IO()
main = do
  args <- getArgs
  print . (showStInt $ read . head $ args) . fibo $ (0,1)
