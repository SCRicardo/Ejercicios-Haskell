sumaCuadradosImparesC :: [Integer] -> Integer
sumaCuadradosImparesC xs = sum [ x*x | x <- xs, odd x ]

main :: IO ()
main = do
  let res =  sumaCuadradosImparesC [1,2,4,3,6]
  putStrLn ("Suma de los cuadrado de los impares de un lista: " ++ show res)