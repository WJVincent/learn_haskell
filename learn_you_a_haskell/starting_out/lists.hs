-- Lists are a homogenus data type. They store elements of the same type.
lostNumbers = [4, 8, 15, 16, 23, 42]

-- Strings are Lists of characters
-- "hello" == ["h", "e", "l", "l", "o"]

combineList l1 l2 = l1 ++ l2

prependList char str = char : str

-- Some List Functions
-- list = [1,2,3,4]
-- head list = [1]
-- tail list = [2,3,4]
-- init list = [1,2,3]
-- last list = [4]
-- length list = 4
-- null list = False
-- null [] = True
-- [1..5] = [1,2,3,4,5]
-- [2,4..8] = [2,4,6,8]

-- The following function is asking Haskell to grab the first n ele
-- of an infinite list using Haskells extreme lazy loading.
grabNFromList n start step = take n [start, step..]

-- List Comprehensions
-- [x*2 | x <- [1..10]] = [2,4,6,8,10,12,14,16,18,20]
-- [x*2 | x <- [1..10], x*2 >= 12] = [12,14,16,18,20]

boomBangs list =
  [if num < 10 then "Boom!" else "Bang!" | num <- list, odd num]
-- boomBangs [7..13] = ["Boom!", "Boom!", "Bang!", "Bang!"]

fizz::Int->String
fizz x = if x `mod` 3 == 0 then "Fizz" else ""

buzz::Int->String
buzz x = if x `mod` 5 == 0 then "Buzz" else ""

fizzBuzz::Int->String
fizzBuzz x = if fizz x ++ buzz x == ""
  then show x
  else fizz x ++ buzz x

comprehend cb start stop = [cb x | x <- [start..stop]]


-- Multiple predicates
-- [x | x <- [10..20], x /= 13, x /= 15, x /= 19] = [10,11,12,14,16,17,18,20]

--Multiple lists
-- [x*y | x <- [2,5,10], y <- [8,10,11]] = [16,20,22,40,50,55,80,100,110]
-- [ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50] = [55,80,100,110]

myLength list = sum [1 | _ <- list]

removeNonUppercase string = [char | char <- string, char `elem` ['A'..'Z']]
