factorial :: Integer -> Integer
factorial n = product [1..n]

main :: IO ()
main = do
  let res = factorial 5
  putStrLn ("Factoriales: " ++ show res)