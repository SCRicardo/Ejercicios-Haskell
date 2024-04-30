imparesC :: [Integer] -> [Integer]
imparesC xs = [x | x <- xs, odd x]

main :: IO ()
main = do
  let res = imparesC [1,2,4,3,6]
  putStrLn ("Impares de un lista: " ++ show res)