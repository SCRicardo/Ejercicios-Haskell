interior :: [a] -> [a]
interior xs = tail (init xs)

main :: IO ()
main = do
    let res = interior [6,7,8,9]
    putStrLn ("El valor ingresado es palindromo?: " ++ show res)
