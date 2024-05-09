numeroVariaciones :: Int -> Int -> Int
numeroVariaciones n k = product [(n-k+1)..n]


main :: IO ()
main = do
  let res = numeroVariaciones 4 3
  putStrLn ("Variaciones: " ++ show res)
