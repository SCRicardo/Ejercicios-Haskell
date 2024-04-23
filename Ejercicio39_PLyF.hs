aproxE :: Int -> [Double]
aproxE n = [(1 + 1 / fromIntegral m) ** fromIntegral m | m <- [1..n]]

main :: IO ()
main = do
  let res = aproxE 4
  putStrLn ("Aproximacion: " ++ show res)
