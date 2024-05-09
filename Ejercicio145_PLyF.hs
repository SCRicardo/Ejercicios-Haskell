raiz :: Double -> Double
raiz x = raiz' 1
    where 
        raiz' y | aceptable y = y
                | otherwise   = raiz' (mejora y)
        mejora y = 0.5 * (y + x / y)
        aceptable y = abs (y * y - x) < 0.00001

main :: IO ()
main = do
  let res = raiz 9
  putStrLn ("Raiz: " ++ show res)