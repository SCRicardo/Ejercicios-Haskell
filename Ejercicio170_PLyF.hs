solucion 1 = [1]
solucion n = 2 : [2*x | x <- solucion (n-1)]

main :: IO ()
main = do
  let res = solucion 5
  putStrLn ("Ecuacion diofantica: " ++ show res)