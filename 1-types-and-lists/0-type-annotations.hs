module Snippets where

x1 :: [Char] -- Correct
x1 = ['a', 'b', 'c']

x2 :: (Char, Char, Char) -- Correct
x2 = ('a', 'b', 'c')

x3 :: [(Bool, Int)] -- Num a => [(Bool, a)] is less restrictive
x3 = [(False, 0), (True, 10)]

x4 :: ([Bool], [Int]) -- Num a => ([Bool], [a]) is less restrictive
x4 = ([False, True], [0, 1])

x5 :: [[a] -> [a]] -- Correct
x5 = [tail, reverse, init]

swap :: (a, b) -> (b, a) -- Correct
swap (x, y) = (y, x) 

pair :: a -> b -> (a, b) -- Correct
pair x y = (x, y)

square :: Num a => a -> a -- Correct
square x = x*x

palindrome :: Eq a => [a] -> Bool -- Correct
palindrome xs = xs == reverse xs

twice :: (a -> a) -> a -> a -- Correct
twice f x = f (f x)