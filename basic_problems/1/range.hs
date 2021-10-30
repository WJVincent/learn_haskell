range :: (Ord a, Enum a) => a -> a -> [a]
range x y
  | y < x = []
  | otherwise = [x..y]
