maximumR :: Ord a => [a] -> a
maximumR [x] = x
maximumR (x:y:ys) = max x (maximumR (y:ys))

main :: IO ()
main = do
  let res = maximumR [3,7,2,5]
  putStrLn ("Maximo elemento de una lista: " ++ show res)
