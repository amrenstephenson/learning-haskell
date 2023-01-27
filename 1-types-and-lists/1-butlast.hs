main :: IO()

-- Using only built-in functions.
-- Time complexity: O(n).
butlast :: [a] -> a
butlast xs = last (reverse (drop 1 (reverse xs)))
-- More elegant alternative from the given solution:    butlast xs = head (reverse (tail xs))
-- Which can be written in point-free style:            butlast' = head . reverse . tail

-- Using only pattern matching.
-- Time complexity: O(n).
butlast' :: [a] -> a
butlast' [a, b] = a -- An alterntive is to replace b with _ as we have no need for it.
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