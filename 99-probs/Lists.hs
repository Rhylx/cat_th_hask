myLast :: [a] -> a
myLast (x:[]) = x
myLast (_:xs) = myLast xs

myButLast :: [a] -> a
myButLast (x:_:[]) = x
myButLast (_:_:xs) = myButLast xs

elementAt :: [a] -> Int -> a
elementAt (x:xs) 1 = x
elementAt (_:xs) n = elementAt xs (n-1)

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = myLength xs + 1

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) =

main :: IO()
main = undefined
