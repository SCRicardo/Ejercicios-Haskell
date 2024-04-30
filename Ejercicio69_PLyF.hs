entreL :: Integer -> Integer -> [Integer]
entreL m n = [m..n]

main :: IO ()
main = do
  let res =  entreL 2 5
  putStrLn ("Intervalo numérico: " ++ show res)