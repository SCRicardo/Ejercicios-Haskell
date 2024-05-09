matriz :: Int -> [a] -> [[a]]
matriz _ [] = []
matriz n xs = take n xs : matriz n (drop n xs)

main :: IO ()
main = do
  let res = matriz 3 [1..9]
  putStrLn ("Cuadrados mágicos: " ++ show res)