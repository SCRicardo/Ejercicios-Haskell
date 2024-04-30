primos :: [Int]
primos = cribaEratostenes 10000

cribaEratostenes :: Int -> [Int]
cribaEratostenes n = criba [2..n]
    where
        criba [] = []
        criba (p:xs) = p : criba [x | x <- xs, x `mod` p /= 0]

sumaPrimoMenores :: Int -> Int
sumaPrimoMenores n = sumaMenores n primos 0
    where
        sumaMenores n (x:xs) a
            | n <= x = a
            | otherwise = sumaMenores n xs (a+x)

main :: IO ()
main = do
  let res = sumaPrimoMenores 10
  putStrLn ("Suma de los números primos menores que n: " ++ show res)
