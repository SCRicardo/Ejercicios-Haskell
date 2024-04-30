sumas :: Int -> [Int] -> [Int]
sumas 0 _ = [0]
sumas _ [] = [0]
sumas n (x:xs) = [x+y | y <- sumas (n-1) (x:xs)] ++ sumas n xs

main :: IO ()
main = do
  let res =  sumas 2 [2,3,5]
  putStrLn ("Números expresables como sumas acotadas de elementos de una lista: " ++ show res)