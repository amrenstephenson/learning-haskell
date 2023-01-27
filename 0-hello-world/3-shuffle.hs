main :: IO()

shuffle :: [a] -> [a]
shuffle [] = []
shuffle (x : xs) = xs ++ [x]

main = do
    print (shuffle []::[Int])
    print (shuffle [1])
    print (shuffle [1, 2])
    print (shuffle [1, 2, 3])
    print (shuffle [1, 2, 3, 4])
    print (shuffle [1, 2, 3, 4, 5])