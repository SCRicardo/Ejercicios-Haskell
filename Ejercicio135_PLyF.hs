prefijosConSuma :: [Int] -> Int -> [[Int]]
prefijosConSuma [] 0 = [[]]
prefijosConSuma [] n = []
prefijosConSuma (x:xs) n
    | x < n = [x:ys | ys <- prefijosConSuma xs (n-x)]
    | x == n = [[x]]
    | x > n = []

main :: IO ()
main = do
  let res = prefijosConSuma [1..10] 3
  putStrLn ("Prefijos: " ++ show res)