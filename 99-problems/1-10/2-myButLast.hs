myButLast :: [a] -> a
myButLast [] = error "No second last in empty List"
myButLast [x,y] = x
myButLast (x:xs) = myButLast xs
