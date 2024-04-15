media3 :: Float -> Float -> Float -> Float
media3 x y z = (x + y + z) / 3

main :: IO ()
main = do
    let res = media3 20 20 10
    putStrLn ("La media de 3 números es: " ++ show res)