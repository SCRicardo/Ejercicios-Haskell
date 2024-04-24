last' :: [a] -> a
last' [x] = x
last' (_:xs) = last' xs

main :: IO ()
main = do
  let res = last' [2,3,5]
  putStrLn ("Ultimo elemento de una lista: " ++ show res)