myIncludes :: (Eq a) => [a] -> a -> Bool
myIncludes xs x = x `elem` xs
