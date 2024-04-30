superpar :: Int -> Bool
superpar n | n < 10 = even n
    | otherwise = even n && superpar (n `div` 10)


main :: IO ()
main = do
  let res = superpar 456 == False
  putStrLn ("Numeros con digitos pares: " ++ show res)