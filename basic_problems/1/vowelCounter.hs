isVowel :: Char -> Bool
isVowel x = x `elem` ['a','e','i','o','u']

countVowels :: String -> Int
countVowels s = length $ filter isVowel s
