
-- Idea: snail nxn : 1line + last col + snail (n-1)x(n-1)

lcol :: [[Int]] -> [Int]
lcol  = map $ head . reverse

ext :: [[Int]] -> [[Int]]
ext [[]] = [[]]
ext ( _:t ) = reverse . map ( tail  . reverse ) $ t


snail :: [[Int]] -> [Int]
snail [[]] = []
snail ( l:[] ) = l
snail ( h:t ) =  h ++ ( lcol t ) ++ ( snail . ext $ (h:t) )

array = [[1,2,3],
         [8,9,4],
         [7,6,5]]

main :: IO()
main = print . snail $ array
