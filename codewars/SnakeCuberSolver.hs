module SnakeCubeSolver where

n = 2

isBetween :: (Int, Int) -> Int -> Bool
isBetween (a, c) b = a <= b && b <= c

isoutside :: (Int, Int, Int) -> Bool
isoutside (a, b, c) = foldl (&&) True (map (isBetween (0, n)) [a, b, c])


solve_ext :: [Int] -> Maybe [((Int, Int, Int), Int)]
solve_ext [] =
solve_ext 0::xs =
solve_ext 1::xs =


solve :: [Int] -> Maybe [(Int, Int, Int)]
solve = map first >>= solve_ext

