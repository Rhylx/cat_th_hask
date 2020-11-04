chmax :: Int -> [Int] -> (Int, Int)
chmax 0 (x:[]) = (x,0)
chmax 0 (x:y:xs) = if x>y then (x,0) else (y,1)
chmax n (x:xs) = chmax (n-1) xs

applychmax :: Int -> [[Int]] -> [Int]
applychmax n [] = []
applychmax n (x:xs) = r : (applychmax (n+s) xs)
                         where (r,s) = chmax n x

longestSlideDown :: [[Int]] -> Int
longestSlideDown l = foldl (+) 0 m where m = applychmax 0 l

main = undefined
