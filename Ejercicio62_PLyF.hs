refinada :: [Float] -> [Float]
refinada (x:y:zs) = x : (x+y)/2 : refinada (y:zs)
refinada xs = xs

main :: IO ()
main = do
  let res = refinada [2,7,1,8]
  putStrLn (". Intercalación de la media aritmética: " ++ show res)