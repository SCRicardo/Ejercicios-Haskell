mitadParesC :: [Int] -> [Int]
mitadParesC xs = [x `div` 2 | x <- xs, x `mod` 2 == 0]

main :: IO ()
main = do
  let res =  mitadParesC [0,2,1,7,8,56,17,18]
  putStrLn ("Mitades de los pares: " ++ show res)