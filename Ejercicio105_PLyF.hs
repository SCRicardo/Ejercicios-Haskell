sumllR :: Num a => [[a]] -> a
sumllR [] = 0
sumllR (xs:xss) = sum xs + sumllR xss

main :: IO ()
main = do
  let res = sumllR [[1,3],[2,5]]
  putStrLn ("Suma de las sumas de una lista de listas: " ++ show res)