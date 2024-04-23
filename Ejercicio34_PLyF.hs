numeroAbundante :: Int -> Bool
numeroAbundante n = n < sum (divisores n)
divisores :: Int -> [Int]
divisores n = [m | m <- [1..n-1], n `mod` m == 0]

main :: IO ()
main = do
    let res = numeroAbundante 5
    putStrLn ("El número abundante es: " ++ show res)