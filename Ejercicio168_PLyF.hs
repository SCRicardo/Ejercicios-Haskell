distancia :: Float -> Float -> Float
distancia m n =
    minimum [abs (i/m - j/n) | i <- [1..m-1], j <- [1..n-1]]

main :: IO ()
main = do
  let res = distancia 2 7
  putStrLn ("Distancia: " ++ show res)