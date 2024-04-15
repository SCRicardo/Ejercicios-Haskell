modulo :: (Int, Int) -> Double
modulo (x, y) = sqrt(fromIntegral (x^2 + y^2))

main :: IO ()
main = do
    let res = modulo (3, 4) 
    putStrLn ("El módulo es: " ++ show res)
