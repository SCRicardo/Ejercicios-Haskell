rota1 :: [a] -> [a]
rota1 xs = tail xs ++ [head xs]
rota :: Int -> [a] -> [a]
rota n xs = drop n xs ++ take n xs

main :: IO ()
main = do
    let res = rota1 [6,7,8,9]
    let res2= rota 1 [10,3,4,5]
    putStrLn ("La rotación de la lista es: " ++ show res)
    putStrLn ("La rotación de la lista es: " ++ show res2)
