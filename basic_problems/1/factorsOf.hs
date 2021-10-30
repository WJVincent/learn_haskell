factorsOf :: (Ord a, Num a, Enum a, Integral a) => a -> [a]
factorsOf n = [a | a <- [1..n], n `mod` a == 0]
