factorial :: Integer -> Integer
factorial n = product [1..n]

factoriales :: [Integer]
factoriales = [factorial n | n <- [0..]]

esFactorial :: Integer -> Bool
esFactorial n = n == head (dropWhile (<n) factoriales)

posicionesFactoriales :: [(Integer,Integer)]
posicionesFactoriales = zip [0..] factoriales

invFactorial :: Integer -> Maybe Integer
invFactorial x
    | esFactorial x = Just (head [n | (n,y) <- posicionesFactoriales, y==x])
    | otherwise = Nothing

pares :: [(Integer, Integer)]
pares = [(x,y) | x <- [0..], y <- [0..x]]

solucionFactoriales :: (Integer,Integer,Integer)
solucionFactoriales = (a,b,c)
    where 
        (a,b) = head [(x,y) | (x,y) <- pares, esFactorial (f x * f y - f x - f y)]
        f = factorial
        Just c = invFactorial (f a * f b - f a - f b)

main :: IO ()
main = do
  let res = solucionFactoriales
  putStrLn ("Soluciones: " ++ show res)