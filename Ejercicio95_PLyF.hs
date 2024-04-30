agrupa :: Eq a => [[a]] -> [[a]]
agrupa [] = []
agrupa xss
    | any null xss = []
    | otherwise = primeros xss : agrupa (restos xss)
    where primeros = map head
          restos = map tail

main :: IO ()
main = do
  let res = agrupa [[1..6],[7..9],[10..20]]
  putStrLn ("Agrupamiento de una lista de listas: " ++ show res)