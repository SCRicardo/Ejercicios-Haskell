mezcla3 :: Ord a => [a] -> [a] -> [a] -> [a]
mezcla3 xs ys zs = merge (merge xs ys) zs
  where
    merge [] ys = ys
    merge xs [] = xs
    merge (x:xs) (y:ys)
      | x < y = x : merge xs (y:ys)
      | otherwise = y : merge (x:xs) ys

hamming :: [Int]
hamming = 1 : mezcla3 [2*i | i <- hamming]
                      [3*i | i <- hamming]
                      [5*i | i <- hamming]

main :: IO ()
main = do
  let res = take 12 hamming
  putStrLn ("Sucesion de Hamming: " ++ show res)