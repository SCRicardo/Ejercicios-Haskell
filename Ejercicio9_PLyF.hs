rango :: Ord a => [a] -> [a]
rango xs = [minimum xs, maximum xs]

main :: IO ()
main = do
    let res = rango [6,7,8,9]
    putStrLn ("El rango de la lista es: " ++ show res)

