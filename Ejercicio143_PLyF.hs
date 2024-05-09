pares :: [a] -> [(a,a)]
pares (x:y:xs) = (x,y) : pares (y:xs)
pares _ = []
pascal :: Int -> [Int]
pascal 1 = [1]
pascal n = [1] ++ [x+y | (x,y) <- pares (pascal (n-1))] ++ [1]


main :: IO ()
main = do
  let res = pascal 6
  putStrLn ("Triangulo: " ++ show res)
