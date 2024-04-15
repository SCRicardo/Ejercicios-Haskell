iguales :: Int -> Int -> Int -> Bool
iguales x y z = x == y && y == z
diferentes :: Int -> Int -> Int -> Bool
diferentes x y z = x /= y && x /= z && y /= z

main :: IO ()
main = do
    let res = iguales 3 3 3
    let res2=diferentes 3 3 3
    putStrLn ("Los números son iguales?: " ++ show res)
    putStrLn ("Los números son diferentes?: "++ show res2)