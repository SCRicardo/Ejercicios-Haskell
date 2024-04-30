minimumP :: Ord a => [a] -> a
minimumP = foldr1 min

main :: IO ()
main = do
  let res = minimumP [3,7,2,5]
  putStrLn ("Minimo elemento de una lista: " ++ show res)