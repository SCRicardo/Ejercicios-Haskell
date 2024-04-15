puntoMedio :: (Int, Int) -> (Int, Int) -> (Float, Float)
puntoMedio (x1, y1) (x2, y2) = ((fromIntegral (x1 + x2)) / 2, (fromIntegral (y1 + y2)) / 2)

main :: IO ()
main = do
    let res = puntoMedio (-1, 2) (7, 6)
    putStrLn ("Punto medio: " ++ show res)
