sumaMonedas :: Int -> Int -> Int -> Int -> Int -> Int
sumaMonedas a b c d e = (a * 1) + (b * 2) + (c * 5) + (d * 10) + (e * 20)

main:: IO ()
main=do
    let res=sumaMonedas 2 2 2 2 2
    putStrLn("La suma de la monedas es: " ++ show res)