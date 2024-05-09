factorial :: Integer -> Integer
factorial n = product [1..n]
factoriales :: [Integer]
factoriales = [factorial n | n <- [0..]]

esFactorial :: Integer -> Bool
esFactorial n = n == head (dropWhile (<n) factoriales)
posicionesFactoriales :: [(Integer,Integer)]
posicionesFactoriales = zip [0..] factoriales

main :: IO ()
main = do
  let res = take 7 posicionesFactoriales
  putStrLn ("Inversa Factoriales: " ++ show res)