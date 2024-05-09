intercala :: a -> [a] -> [[a]]
intercala x [] = [[x]]
intercala x (y:ys) = (x:y:ys) : [y:zs | zs <- intercala x ys]


main :: IO ()
main = do
  let res = intercala 1 [2,3]
  putStrLn ("Permutaciones: " ++ show res)