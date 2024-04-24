and' :: [Bool] -> Bool
and' [] = True
and' (b:bs) = b && and' bs

main :: IO ()
main = do
  let res = and' [1+2 < 3, 2 < 3]
  putStrLn ("Conjuncion de una lista: " ++ show res)