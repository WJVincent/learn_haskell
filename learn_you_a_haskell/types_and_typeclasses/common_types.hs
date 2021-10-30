-- Int : Bounded whole numbers.
-- Integer : Unbounded whole numbers
-- Float : real floating point with single precision
-- Double : real floating point with double precision
-- Bool : True or False
-- Char : A single Character
-- [Char] or String : Character List

--Type Variables

-- :t head
-- head :: [a] -> a
-- a represents a thing that can be of any type
-- functions that use type variables are called polymorphic functions

-- :t fst
-- fst :: (a,b) -> a

--Typeclasses

-- :t (==)
-- (==) :: (Eq a) => a -> a -> Bool
-- Everything before => is a class constraint
-- The above function can be read as follows
-- The equality function takes any two values that are of the same type
-- and returns a Bool. The type of those two values must be part of the Eq class

-- Operators [==, +, -, *, /] are all functions

-- :t elem
-- elem :: (Eq a) => a -> [a] -> Bool
-- is a a member of this List of type [a] returns Bool

--Some Basic Typeclasses
-- Eq : used for types that support equality testing
-- Ord : used for types that have an ordering
-- Show : can be presented as strings
-- Read : opposite of show
-- Enum : members are sequentially ordered types
-- Num : numeric typeclass


-- read "5" :: Int
-- 5

-- read "5" :: Int
-- 5.0
