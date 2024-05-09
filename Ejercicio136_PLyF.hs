sumaCifras :: Int -> Int
sumaCifras x = sum [read [y] | y <- show x]

main :: IO ()
main = do
  let res = sumaCifras 254
  putStrLn ("Suma de cifras: " ++ show res)