numeroAbundante :: Int -> Bool
numeroAbundante n = n < sum (divisores n)
divisores :: Int -> [Int]
divisores n = [m | m <- [1..n-1], n `mod` m == 0]
numerosAbundantesMenores :: Int -> [Int]
numerosAbundantesMenores n = [x | x <- [1..n], numeroAbundante x]
todosPares :: Int -> Bool
todosPares n = and [even x | x <- numerosAbundantesMenores n]


main :: IO ()
main = do
    let res = todosPares 100
    putStrLn ("Son pares: " ++ show res)