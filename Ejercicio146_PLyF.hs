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

main :: IO ()
main = do
  let res = puntoCero cos
  putStrLn ("Calculo de 0: " ++ show res)