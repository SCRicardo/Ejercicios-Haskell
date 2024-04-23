numeroAbundante :: Int -> Bool
numeroAbundante n = n < sum (divisores n)
divisores :: Int -> [Int]
divisores n = [m | m <- [1..n-1], n `mod` m == 0]
numerosAbundantesMenores :: Int -> [Int]
numerosAbundantesMenores n = [x | x <- [1..n], numeroAbundante x]

main :: IO ()
main = do
    let res = numerosAbundantesMenores 50
    putStrLn ("Números abundantes antes de 50: " ++ show res)