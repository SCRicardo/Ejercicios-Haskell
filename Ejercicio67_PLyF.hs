imparesCuadradosC :: [Integer] -> [Integer]
imparesCuadradosC xs = [x*x | x <- xs, odd x]

main :: IO ()
main = do
  let res =  imparesCuadradosC [1,2,4,3,6]
  putStrLn ("Cuadrado de los impares de un lista: " ++ show res)