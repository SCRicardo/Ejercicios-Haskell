take' :: Int -> [a] -> [a]
take' 0 _ = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs

main :: IO ()
main = do
  let res = take' 3 [4..12]
  putStrLn ("Seleccion de los primeros elementos: " ++ show res)