{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use if" #-}
main :: IO()

-- Using a conditional expression.
safetail :: [a] -> [a]
safetail xs = do
    if null xs then -- From solutions: It is important to use `null xs` here rather than `length xs == 0`, as checking the length requires every element to be counted unlike checking with null.
        []
    else
        tail xs

-- Using guard expressions.
safetail' :: [a] -> [a]
safetail' xs
    | null xs = []
    | otherwise = tail xs

-- Using pattern matching.
safetail'' :: [a] -> [a]
safetail'' [] = []
safetail'' (x:xs) = xs

-- From solutions, iteresting guard-like alternative (VSCode linting wanted to change it to a conditional expression):
safetail''' :: [a] -> [a]
safetail''' xs = case null xs of
    True -> []
    _ -> tail xs

main = do
    print (safetail []::[Int])
    print (safetail [1])
    print (safetail [1, 2])
    print (safetail [1, 2, 3])
    print (safetail' []::[Int])
    print (safetail' [1])
    print (safetail' [1, 2])
    print (safetail' [1, 2, 3])
    print (safetail'' []::[Int])
    print (safetail'' [1])
    print (safetail'' [1, 2])
    print (safetail'' [1, 2, 3])