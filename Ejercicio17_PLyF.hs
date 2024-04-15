iguales :: Int -> Int -> Int -> Bool
iguales x y z = x == y && y == z
cuatroIguales::Int ->Int ->Int ->Int ->Bool
cuatroIguales x y z u = x == y && iguales y z u

main :: IO ()
main = do
    let res = cuatroIguales 5 5 5 5
    putStrLn ("Los números son iguales?: " ++ show res)
