consecutivosConSuma :: Int -> Int -> [[Int]]
consecutivosConSuma x n =
    [[y..y+n-1] | y <- [1..x], sum [y..y+n-1] == x]


main :: IO ()
main = do
  let res = consecutivosConSuma 12 3
  putStrLn ("Numeros consecutivos: " ++ show res)
