mezcla :: Ord a => [a] -> [a] -> [a]
mezcla [] ys = ys
mezcla xs [] = xs
mezcla (x:xs) (y:ys) | x <= y = x : mezcla xs (y:ys)
                        | otherwise = y : mezcla (x:xs) ys

main :: IO ()
main = do
  let res = mezcla [2,5,6] [1,3,4]
  putStrLn ("Ordenación por mezcla: " ++ show res)