inversaR :: [a] -> [a]
inversaR [] = []
inversaR (x:xs) = (inversaR xs) ++ [x]


main :: IO ()
main = do
  let res = inversaR [3,5,2,4,7]
  putStrLn ("Inversa de una lista: " ++ show res)