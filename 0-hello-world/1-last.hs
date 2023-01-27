main :: IO()

last' :: [a] -> a
last' [x] = x
last' (x:xs) = last' xs

main = print (last' [1, 2, 3, 4, 5])