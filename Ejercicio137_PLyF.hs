subconjunto :: Eq a => [a] -> [a] -> Bool
subconjunto [] _ = True
subconjunto (x:xs) ys = elem x ys && subconjunto xs ys

main :: IO ()
main = do
  let res = subconjunto [1,3,4,3] [1,2,3]
  putStrLn ("Suma de cifras: " ++ show res)