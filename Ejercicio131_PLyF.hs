eslabones :: Int -> Int -> Int -> [Int]
eslabones i d n = [(i+d*j) `mod` n | j <- [0..]]


main :: IO ()
main = do
  let res = take 10 (eslabones 2 7 25)
  putStrLn ("Bicicleta de Turing: " ++ show res)