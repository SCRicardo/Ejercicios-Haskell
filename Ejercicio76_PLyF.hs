factores :: Integer -> [Integer]
factores n = [x | x <- [1..n], mod n x == 0]

main :: IO ()
main = do
  let res =  factores 60
  putStrLn ("Factores primos de un número: " ++ show res)