itera :: (a -> a) -> a -> [a]
itera f x = x : itera f (f x)

main :: IO ()
main = do
  let res = take 5 (itera (`div` 10) 1972)
  putStrLn ("Aplicacion iterada: " ++ show res)
