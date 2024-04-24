menorDivisible :: Integer -> Integer -> Integer
menorDivisible a b
    | a == b = a
    | otherwise = lcm a (menorDivisible (a+1) b)

main :: IO ()
main = do
  let res = menorDivisible 2 5
  putStrLn ("Menor numero divisible: " ++ show res)