mapR :: (a -> b) -> [a] -> [b]
mapR f [] = []
mapR f (x:xs) = f x : mapR f xs


main :: IO ()
main = do
  let res = mapR (+2) [1,7,3]
  putStrLn ("Redefinicion map: " ++ show res)