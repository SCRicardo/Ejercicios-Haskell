circulo :: Int -> Int
circulo n = length [(x,y) | x <- [0..n], y <- [0..n], x^2+y^2 < n^2]
circulo' :: Int -> Int
circulo' n = length [(x,y) | x <- [0..m], y <- [0..m], x^2+y^2 < n^2]
    where m = raizCuadradaEntera n
raizCuadradaEntera :: Int -> Int
raizCuadradaEntera n = truncate (sqrt (fromIntegral n))


main :: IO ()
main = do
  let res = circulo 10
  let raiz=raizCuadradaEntera res
  putStrLn ("Circulo: " ++ show res)
  putStrLn("Raiz: "++ show raiz)