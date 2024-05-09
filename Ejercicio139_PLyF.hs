combinaciones :: Int -> [a] -> [[a]]
combinaciones 0 _ = [[]]
combinaciones _ [] = []
combinaciones k (x:xs) =
    [x:ys | ys <- combinaciones (k-1) xs] ++ combinaciones k xs

main :: IO ()
main = do
  let res = combinaciones 3 "abcde"
  putStrLn ("Permutaciones: " ++ show res)