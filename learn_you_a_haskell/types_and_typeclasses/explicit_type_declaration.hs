removeLowercase :: String -> String
removeLowercase str = [c | c <- str, c `elem` ['A'..'Z']]

--no particular distinction between params and return
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z
