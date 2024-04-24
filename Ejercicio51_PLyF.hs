replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' n x = x : replicate' (n - 1) x

main :: IO ()
main = do
  let res = replicate' 3 2
  putStrLn ("Replicacion : " ++ show res)
