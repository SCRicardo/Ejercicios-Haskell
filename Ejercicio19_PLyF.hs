divisionSegura :: Int -> Int -> Int
divisionSegura _ 0 = 9999
divisionSegura x y = x `div` y

main :: IO ()
main = do
    let res = divisionSegura 7 0 
    putStrLn ("El resultado es: " ++ show res)
