{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use :" #-}

main :: IO()

init' :: [a] -> [a]
init' [a] = []
init' (x:xs) = x : init' xs

-- The same as the first, but written differently. VSCode suggested I change it to the first.
init'' :: [a] -> [a]
init'' [a] = []
init'' (x:xs) = [x] ++ init' xs

-- https://github.com/Muirey03's idea:
init''' :: [a] -> [a]
init''' xs = take (length xs - 1) xs


main = do
    print (init' [1, 2, 3, 4, 5])
    print (init' [1])
    print (init'' [6, 7, 8, 9, 10])
    print (init'' [6])
    print (init''' [11, 12, 13, 14, 15])
    print (init''' [11])