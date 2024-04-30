enteros :: [Int]
enteros = 0 : concat [[-x,x] | x <- [1..]]


main :: IO ()
main = do
  let res = take 10 enteros
  putStrLn ("Ordenamiento de los números enteros: " ++ show res)