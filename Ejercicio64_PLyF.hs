esPermutacion :: Eq a => [a] -> [a] -> Bool
esPermutacion [] [] = True
esPermutacion [] (y:ys) = False
esPermutacion (x:xs) ys = elem x ys && esPermutacion xs (borra x ys)

borra :: Eq a => a -> [a] -> [a]
borra _ [] = []
borra y (x:xs) | x == y    = borra y xs
               | otherwise = x : borra y xs

main :: IO ()
main = do
  let res = esPermutacion [1,2,1] [2,1,1]
  putStrLn ("Determinación de permutaciones: " ++ show res)
