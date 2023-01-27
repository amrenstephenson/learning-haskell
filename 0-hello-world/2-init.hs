{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use :" #-}

main :: IO()

init' :: [a] -> [a]
init' [a, b] = [a]
init' (x:xs) = x : init' xs

init'' :: [a] -> [a]
init'' [a, b] = [a]
init'' (x:xs) = [x] ++ init' xs

main = do
    print (init' [1, 2, 3, 4, 5])
    print (init'' [6, 7, 8, 9, 10])