siguiente n | even n = n `div` 2
    | otherwise = 3*n+1

main :: IO ()
main = do
  let res = siguiente 40
  putStrLn ("Sucesion de Collatz: " ++ show res)