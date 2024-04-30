sustituyeImpar :: [Int] -> [Int]
sustituyeImpar [] = []
sustituyeImpar (x:xs) | odd x = (x+1): sustituyeImpar xs
                      | otherwise = x:sustituyeImpar xs

main :: IO ()
main = do
  let res =  sustituyeImpar [2,5,7,4]
  putStrLn ("Sustitucion de impares por el siguiente par: " ++ show res)