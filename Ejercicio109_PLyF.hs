colas :: [a] -> [[a]]
colas [] = [[]]
colas (x:xs) = (x:xs) : colas xs

main :: IO ()
main = do
  let res = colas [4,1,2,5]
  putStrLn ("PColas de una lista: " ++ show res)
