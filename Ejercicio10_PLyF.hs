palindromo :: Eq a => [a] -> Bool
palindromo xs = xs == reverse xs

main :: IO ()
main = do
    let res = palindromo [6,7,8,9]
    let res2=palindromo [3,2,5,2,3]
    putStrLn ("El valor ingresado es palindromo?: " ++ show res)
    putStrLn ("El valor ingresado es palindromo?: " ++ show res2)
