calculaPi :: Int -> Double 
calculaPi n = 4 * sum [(-1.0) ** fromIntegral x / (2 * fromIntegral x + 1) | x <- [0 .. n]]

main :: IO ()
main = do
  let res = calculaPi 1000000  -- Aumenta el valor de n para una mejor aproximación
  putStrLn ("PI: " ++ show res)
