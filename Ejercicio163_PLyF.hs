sumasDe2Cuadrados :: Integer -> [(Integer, Integer)]
sumasDe2Cuadrados n =
    [(x,y) | x <- [n,n-1..0],
        y <- [0..x],
        x*x+y*y == n]

main :: IO ()
main = do
  let res = sumasDe2Cuadrados 25
  putStrLn ("Suma de dos cuadrados: " ++ show res)