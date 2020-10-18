myLast :: [a] -> a
myLast (x:[]) = x
myLast (_:xs) = myLast xs

myButLast :: [a] -> a
myButLast (x:_:[]) = x
myButLast (_:_:xs) = myButLast xs

main :: IO()
main = undefined
