selecciona :: [a] -> Int -> a
selecciona (x:_) 0 = x
selecciona (_:xs) n = selecciona xs (n-1)

main :: IO ()
main = do
  let res = selecciona [2,3,5,7] 2
  putStrLn ("Seleccion de una lista: " ++ show res)
