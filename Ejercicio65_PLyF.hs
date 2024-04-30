cuadradosC :: [Integer] -> [Integer]
cuadradosC xs = [x*x | x <- xs]

main :: IO ()
main = do
  let res = cuadradosC [1,2,3]
  putStrLn ("Cuadrados de una lista: " ++ show res)