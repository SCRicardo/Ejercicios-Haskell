porcentaje :: Int -> Int -> Float
porcentaje n m = (fromIntegral n / fromIntegral m) * 100

main :: IO ()
main = do
  let res = porcentaje 2 5
  putStrLn ("Frecuencia: " ++ show res)