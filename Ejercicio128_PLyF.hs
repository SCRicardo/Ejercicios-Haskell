paresOrdenados :: [a] -> [(a,a)]
paresOrdenados [] = []
paresOrdenados (x:xs) = [(x,y) | y <- xs] ++ paresOrdenados xs

main :: IO ()
main = do
  let res = paresOrdenados [3,2,5,3]
  putStrLn ("Pares ordenados por posición: " ++ show res)