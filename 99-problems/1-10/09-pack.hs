pack :: Eq a => [a] -> [[a]]
pack [] = []
--                    grab sublist         delete sublist from main list
pack (x : xs) = (x : takeWhile (== x) xs) : pack (dropWhile (== x) xs)
