xor1 :: Bool -> Bool -> Bool
xor1 v1 v2 = v1 /= v2 && v2 /= v1
xor2 :: Bool -> Bool -> Bool
xor2 True y = not y
xor2 False y = y
xor3 :: Bool -> Bool -> Bool
xor3 x y = (x || y) && not (x && y)
xor4 :: Bool -> Bool -> Bool
xor4 x y = x /= y


main :: IO ()
main = do
    let res = xor1 True True
    let res2=xor2 True False
    let res3=xor3 False True
    let res4=xor4 False False
    putStrLn ("La condición es: " ++ show res)
    putStrLn ("La condición es: " ++ show res2)
    putStrLn ("La condición es: " ++ show res3)
    putStrLn ("La condición es: " ++ show res4)
