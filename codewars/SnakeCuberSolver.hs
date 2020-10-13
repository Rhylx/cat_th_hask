module SnakeCubeSolver where

n = 2

isBetween :: (Int, Int) -> Int -> Bool
isBetween (a, c) b = a <= b && b <= c

isoutside :: (Int, Int, Int) -> Bool
isoutside (a, b, c) = foldl (&&) True (map (isBetween (0, n)) [a, b, c])


solve_ext :: [Int] -> Maybe [((Int, Int, Int), Int)]
solve_ext [] =  Just []
solve_ext x::[] = Just [(n,n,n),x)]
solve_ext x::xs =

solve :: [Int] -> Maybe [(Int, Int, Int)]
solve l = fmap (map fst) (solve_ext l)

