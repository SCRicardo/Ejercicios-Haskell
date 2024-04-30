dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' _ [] = []
dropWhile' p (x:xs)
    | p x = dropWhile' p xs
    | otherwise = x:xs


main :: IO ()
main = do
  let res = dropWhile (<7) [2,3,9,4,5]
  putStrLn ("Complementario del segmento inicial verificando una propiedad: " ++ show res)