puntoCero :: (Double -> Double) -> Double
puntoCero f = puntoCero' f 1
    where 
        puntoCero' f x | aceptable x = x
                       | otherwise   = puntoCero' f (mejora x)
        mejora b = b - f b / derivadaFina f b
        aceptable b = abs (f b) < 0.00001

derivadaFina :: (Double -> Double) -> Double -> Double
derivadaFina f x = (f (x + h) - f x) / h
    where h = 0.0001
    
raizCuadrada :: Double -> Double
raizCuadrada a = puntoCero f
    where f x = x*x-a


main :: IO ()
main = do
  let res = raizCuadrada 9
  putStrLn ("Funciones inversas: " ++ show res)