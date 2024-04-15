distancia :: (Int, Int) -> (Int, Int) -> Float
distancia (x1, y1) (x2, y2) = sqrt (fromIntegral ((x1 - x2) ^ 2 + (y1 - y2) ^ 2))

main :: IO ()
main = do
    let res = distancia (1, 2) (4, 6)
    putStrLn ("Distancia entre dos puntos: " ++ show res)
