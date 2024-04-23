sumaDeCuadrados :: Integer -> Integer
sumaDeCuadrados n = sum [x^2 | x <- [1..n]]

main :: IO ()
main = do
    let res = sumaDeCuadrados 3
    putStrLn ("La suma de cuadrados es: " ++ show res)