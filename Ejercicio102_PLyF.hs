sumaR :: Num b => (a -> b) -> [a] -> b
sumaR f [] = 0
sumaR f (x:xs) = f x + sumaR f xs

main :: IO ()
main = do
  let res = sumaR (/10) [3,5,10]
  putStrLn ("Suma de valores de una aplicacion a una lista: " ++ show res)