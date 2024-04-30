producto :: Num a => [a] -> a
producto = foldr (*) 1


main :: IO ()
main = do
  let res = producto [2,1,-3,4,5,-6]
  putStrLn ("Producto de los numeros que verifican una propiedad: " ++ show res)
