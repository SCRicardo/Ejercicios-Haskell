intercambio :: (Int, Int) -> (Int,Int)
intercambio (x,y) = (y,x)


main :: IO ()
main = do
    let res = intercambio (5,2)
    putStrLn ("Intercambio de cordenadas: " ++ show res)

