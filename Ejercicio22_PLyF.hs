cuadrante :: (Int, Int) -> Int
cuadrante (x, y)
    | x > 0 && y > 0 = 1
    | x < 0 && y > 0 = 2
    | x < 0 && y < 0 = 3
    | x > 0 && y < 0 = 4
    | otherwise = error "Punto en el origen o en el borde"

main :: IO ()
main = do
    let res = cuadrante (3, -5)
    putStrLn ("El cuadrante es: " ++ show res)
