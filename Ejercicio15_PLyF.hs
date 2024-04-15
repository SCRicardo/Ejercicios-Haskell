mediano :: Int -> Int -> Int -> Int
mediano x y z = x + y + z - minimum [x, y, z] - maximum [x, y, z]

main :: IO ()
main = do
    let res = mediano 3 4 5
    putStrLn ("Mediano: " ++ show res)
