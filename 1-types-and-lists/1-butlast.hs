main :: IO()

-- Using only built-in functions.
butlast :: [a] -> a
butlast xs = last (reverse (drop 1 (reverse xs)))

-- Using only pattern matching.
butlast' :: [a] -> a
butlast' [a, b] = a
butlast' (x:xs) = butlast' xs

main = do
    print (butlast [1, 2])
    print (butlast [1, 2, 3])
    print (butlast [1, 2, 3, 4])
    print (butlast [1, 2, 3, 4, 5])
    print (butlast' [1, 2])
    print (butlast' [1, 2, 3])
    print (butlast' [1, 2, 3, 4])
    print (butlast' [1, 2, 3, 4, 5])