mayorRectangulo :: (Int, Int) -> (Int, Int) -> (Int, Int)
mayorRectangulo (a,b) (c,d)
    | a*b >= c*d = (a,b)
    | otherwise = (c,d)

main :: IO ()
main = do
    let res = mayorRectangulo (4,6) (3,9)
    putStrLn ("El mayor rectángulo es: " ++ show res)
