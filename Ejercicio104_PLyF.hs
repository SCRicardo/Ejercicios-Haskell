filterR :: (a -> Bool) -> [a] -> [a]
filterR p [] = []
filterR p (x:xs) | p x = x : filterR p xs
    | otherwise = filterR p xs

main :: IO ()
main = do
  let res = filterR (<4) [1,7,3,2]
  putStrLn ("Redefinicion filter: " ++ show res)