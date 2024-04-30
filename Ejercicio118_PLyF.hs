cribaEratostenes :: Int -> [Int]
cribaEratostenes n = criba [2..n]
    where
        criba [] = []
        criba (p:xs) = p : criba [x | x <- xs, x `mod` p /= 0]

sumaDeDosPrimos :: Int -> [(Int, Int)]
sumaDeDosPrimos n =
    [(x, n - x) | x <- primosN, x < n - x, elem (n - x) primosN]
    where primosN = cribaEratostenes n

main :: IO ()
main = do
  let res = sumaDeDosPrimos 30
  putStrLn ("Descomposicion como suma de dos primos: " ++ show res)