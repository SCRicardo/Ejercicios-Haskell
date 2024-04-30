sumaDeDos :: Int -> [Int] -> Maybe (Int,Int)
sumaDeDos _ [] = Nothing
sumaDeDos _ [_] = Nothing
sumaDeDos y (x:xs) | y-x `elem` xs = Just (x,y-x)
    | otherwise = sumaDeDos y xs

main :: IO ()
main = do
  let res = sumaDeDos 5 [7,4,6,2,5]
  putStrLn ("Expresión de un número como suma de dos de una lista: " ++ show res)