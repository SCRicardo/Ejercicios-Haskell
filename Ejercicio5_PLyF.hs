ultimaCifra :: Int -> Int
ultimaCifra x = rem x 10

main :: IO ()
main = do
    let res = ultimaCifra 325
    putStrLn ("La última cifra del número es: " ++ show res)

