factorial :: Integer -> Integer
factorial n = product [1..n]
factoriales :: [Integer]
factoriales = [factorial n | n <- [0..]]

esFactorial :: Integer -> Bool
esFactorial n = n == head (dropWhile (<n) factoriales)


main :: IO ()
main = do
  let res = esFactorial 120
  putStrLn ("Factoriales?: " ++ show res)