-- myMax :: (Ord a) => [a] -> a
-- myMax [] = error "maximum of empty list"
-- myMax [x] = x
-- myMax (x:xs)
--   | x > maxTail = x
--   | otherwise = maxTail
--   where maxTail = myMax xs

myMax :: (Ord a) => [a] -> a
myMax [] = error "maximum of empty list"
myMax [x] = x
myMax (x:xs) = max x (myMax xs)

clone :: (Num i, Ord i) => i -> a -> [a]
clone n x
  | n <= 0    = []
  | otherwise = x:clone (n-1) x

myTake :: (Num i, Ord i) => i -> [a] -> [a]
myTake n _
  | n <= 0 = []
myTake _ [] = []
myTake n (x:xs) = x : myTake (n-1) xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

myZip :: [a] -> [b] -> [(a,b)]
myZip _ [] = []
myZip [] _ = []
myZip (x:xs) (y:ys) = (x,y):myZip xs ys

quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) =
  let smaller = quickSort [a | a <- xs, a <= x]
      bigger  = quickSort [a | a <- xs, a > x]
  in smaller ++ [x] ++ bigger
