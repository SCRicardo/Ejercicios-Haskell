elimina :: Int -> [Int] -> [Int]
elimina n xs = [ x | x <- xs, x `rem` n /= 0 ]


main :: IO ()
main = do
  let res = elimina 3 [2,3,8,9,5,6,7]
  putStrLn ("Resultado: " ++ show res)