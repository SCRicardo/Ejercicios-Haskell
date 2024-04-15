triangular :: Int -> Int -> Int -> Bool
triangular a b c = a < b+c && b < a+c && c < a+b

main :: IO ()
main = do
    let res = triangular 3 4 50
    putStrLn ("Propiedad triangular: " ++ show res)
