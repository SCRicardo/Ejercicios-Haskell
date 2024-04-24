potencia :: Integer -> Integer -> Integer
potencia m 0 = 1
potencia m n = m*(potencia m (n-1))


main :: IO ()
main = do
  let res = potencia 2 3
  putStrLn ("Potencia: " ++ show res)