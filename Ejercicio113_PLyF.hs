multiplosRestringidos :: Int -> (Int -> Bool) -> [Int]
multiplosRestringidos n p =
    [y | y <- [n,2*n..], all p (digitos y)]
    where
        digitos 0 = []
        digitos n = digitos (n `div` 10) ++ [n `mod` 10]

main :: IO ()
main = do
  let res = take 5 (multiplosRestringidos 3 even)
  putStrLn ("Multiplos cuyos digitos verifican una propiedad: " ++ show res)
