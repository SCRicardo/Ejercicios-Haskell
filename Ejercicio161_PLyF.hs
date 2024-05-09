separa9 :: [Int] -> [[Int]]
separa9 [] = []
separa9 bs = take 9 bs : separa9 (drop 9 bs)


main :: IO ()
main = do
  let res = separa9 [1,1,0,0,0,0,1,1,0,1,0,1,0,0,0,1,1,0,0,1,1,0,0,0,1,1,0]
  putStrLn ("Descodificacion: " ++ show res)