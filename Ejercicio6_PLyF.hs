maxTres :: Int -> Int -> Int ->Int
maxTres x y z = max x (max y z)

main :: IO ()
main = do
    let res = maxTres 10 11 12
    putStrLn ("El máximo de los 3 números es de: " ++ show res)
