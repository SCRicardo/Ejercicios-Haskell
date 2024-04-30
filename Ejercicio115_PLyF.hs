agrupa :: Int -> [a] -> [[a]]
agrupa n [] = []
agrupa n xs = take n xs : agrupa n (drop n xs)


main :: IO ()
main = do
  let res = agrupa 5 "todo necio confunde valor y precio"
  putStrLn ("Agrupamiento de elementos consecutivos: " ++ show res)