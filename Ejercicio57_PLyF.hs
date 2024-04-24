elem' :: Eq a => a -> [a] -> Bool
elem' x [] = False
elem' x (y:ys) | x == y = True
    | otherwise = elem' x ys


main :: IO ()
main = do
  let res = elem' 4 [2,3,5]
  putStrLn ("Pertenencia de una lista: " ++ show res)