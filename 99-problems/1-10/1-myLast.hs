myLast :: [a] -> a
myLast [] = error "No last for empty list"
myLast [x] = x
myLast (_:xs) = myLast xs
