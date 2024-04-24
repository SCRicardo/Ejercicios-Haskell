dobleFactorial :: Integer -> Integer
dobleFactorial 0 = 1
dobleFactorial 1 = 1
dobleFactorial n = n * dobleFactorial (n-2)

main :: IO ()
main = do
  let res = dobleFactorial 8
  putStrLn ("Factorial : " ++ show res)