-- every function in Haskell takes on parameter. You can define multi parameter
-- functions due to currying.

multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

-- ((multThree x) y) z
-- multThree = \x -> \y -> \z -> x + y + z

compareWithHundred :: (Num a, Ord a) => a -> Ordering
-- compareWithHundred x = compare 100 x
-- == the following due to partial application and currying
compareWithHundred = compare 100
-- compareWithHundred 99 == GT
-- compareWithHundred 200 == LT

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)
-- applyTwice (*2) 10 == 40

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith _ [] _ = []
myZipWith _ _ [] = []
myZipWith f (x:xs) (y:ys) = f x y : myZipWith f xs ys
-- myZipWith (+) [1,2,3,4] [2,3,4,5] == [3,5,7,9]
-- myZipWith (max) [12,1,3,7] [2,20,4,100] == [12,20,4,100]

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort (filter (<=x) xs)
        biggerSorted = quicksort (filter (>x) xs)
    in  smallerSorted ++ [x] ++ biggerSorted

-- folds

mySum :: (Num a) => [a] -> a
-- mySum xs = foldl (\acc x -> acc + x) 0 xs
-- mySum = foldl (\acc x -> acc + x) 0
-- mySum = foldl (+) 0
mySum = foldl1 (+)
-- mySum [1,2,3,4] == 10
