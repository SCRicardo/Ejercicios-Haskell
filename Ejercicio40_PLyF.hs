errorLimSeno :: Double -> Double
errorLimSeno x = case [m | m <- [1..], abs(1 - sin(1/m)/(1/m)) < x] of
                    (m:_) -> m
                    []    -> error "No se encontró un límite que satisfaga la condición."

main :: IO ()
main = do
  let res = errorLimSeno 0.1
  putStrLn ("Aproximacion: " ++ show res)