sumaPositivosC :: [Int] -> Int
sumaPositivosC xs = sum [x | x <- xs, x > 0]

main :: IO ()
main = do
  let res =  sumaPositivosC [0,1,-3,-2,8,-1,6]
  putStrLn ("Suma de elementos positivos: " ++ show res)