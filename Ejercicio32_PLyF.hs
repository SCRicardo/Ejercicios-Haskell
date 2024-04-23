suma :: Int -> Int
suma n = sum [1..n]

main :: IO ()
main = do
    let res = suma 5 
    putStrLn ("La suma es: " ++ show res)