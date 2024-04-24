mcd :: Integer -> Integer -> Integer
mcd a 0 = a
mcd a b = mcd b (a `mod` b)

main :: IO ()
main = do
  let res = mcd 30 45
  putStrLn ("Maximo comun divisor : " ++ show res)