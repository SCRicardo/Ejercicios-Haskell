cribaEratostenes :: Int -> [Int]
cribaEratostenes n = criba [2..n]
    where
        criba [] = []
        criba (p:xs) = p : criba [x | x <- xs, x `mod` p /= 0]

esProductoDeDosPrimos :: Int -> Bool
esProductoDeDosPrimos n =
    [x | x <- primosN,
        mod n x == 0,
        div n x /= x,
        elem (div n x) primosN] /= []
    where primosN = cribaEratostenes n

main :: IO ()
main = do
  let res = esProductoDeDosPrimos 9
  putStrLn ("Números expresables como producto de dos primos: " ++ show res)
