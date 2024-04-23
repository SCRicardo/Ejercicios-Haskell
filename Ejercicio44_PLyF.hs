productoEscalar :: [Int] -> [Int] -> Int
productoEscalar xs ys = sum [x*y | (x,y) <- zip xs ys]


main :: IO ()
main = do
  let res = productoEscalar  [1,2,3] [4,5,6]
  putStrLn ("PI: " ++ show res)