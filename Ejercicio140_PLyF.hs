combinacionesR :: Int -> [a] -> [[a]]
combinacionesR _ [] = []
combinacionesR 0 _ = [[]]
combinacionesR k (x:xs) =
    [x:ys | ys <- combinacionesR (k-1) (x:xs)] ++ combinacionesR k xs

main :: IO ()
main = do
  let res = combinacionesR 3 "abc"
  putStrLn ("Combinaciones: " ++ show res)