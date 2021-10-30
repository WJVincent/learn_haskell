--Tuples dont need to be homogenus
--Tuple builtins
--fst (8,11) = 8
--snd (8,11) = 11
--zip [1,2,3] [4,5,6] = [(1,4),(2,5),(3,6)]

--longer lists will get truncated to the shorter lists length
--zip [5,3,2,6,2,7,2,5,4,6,6] ["im","a","turtle"] =
--[(5,"im"),(3,"a"),(2,"turtle")]

--This means that due to haskells laziness you can use an infinite list with a
--finite list
-- zip [1..] ["apple", "orange", "cherry", "mango"] =
-- [(1,"apple"),(2,"orange"),(3,"cherry"),(4,"mango")]

--all triangles with sides <= 10
triangles = [(a, b, c) | c <- [1 .. 10], b <- [1 .. 10], a <- [1 .. 10]]

--What if we only want right triangles
rightTriangles =
  [ (a, b, c) | c <- [1 .. 10], b <- [1 .. c], a <- [1 .. b], a ^ 2 + b ^ 2 == c ^ 2
  ]

--What if we only want right triangles where the perimeter is == 24
rightTriPer24 =
  [ (a, b, c)
    | c <- [1 .. 10],
      b <- [1 .. c],
      a <- [1 .. b],
      a ^ 2 + b ^ 2 == c ^ 2,
      a + b + c == 24
  ]

quickSort [] = []
quickSort (first : rest) = quickSort smaller ++ [first] ++ quickSort larger
  where
    smaller = [a | a <- rest, a <= first]
    larger = [b | b <- rest, b > first]
