--When defining functions, you can define different function bodies for
--different patterns.

lucky :: (Integral a) => a -> String
lucky 7 = "Lucky Number Seven!"
lucky x = "Sorry, you're out of luck!"

--pattern matching runs in line like an if, the catch all needs to be at the
--bottom.
sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n-1)

myLength :: (Num b) => [a] -> b
myLength [] = 0
myLength (_:list) = 1 + myLength list

mySum :: (Num a) => [a] -> a
mySum [] = 0
mySum (x:xs) = x + mySum xs

--patterns are a way up breaking something up into a pattern but keeping a ref
--to the whole thing.
capital :: String -> String
capital "" = "Empty String"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]


--gaurds test patterns, very similar to if statements
gpaTell :: (RealFloat a) => a -> String
gpaTell gpa
  | gpa <= 1.0 = "super oof"
  | gpa <= 2.0 = "oof"
  | gpa <= 3.0 = "passable"
  | otherwise  = "good job"

myMax :: (Ord a) => a -> a -> a
myMax a b
  | a > b = a
  | otherwise = b

initials :: String -> String -> String
initials firstname lastname = [f] ++ "." ++ [l] ++ "."
  where (f:_) = firstname
        (l:_) = lastname
