takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' _ [] = []
takeWhile' p (x:xs)
    | p x = x : takeWhile' p xs
    | otherwise = []


main :: IO ()
main = do
  let res = takeWhile (<7) [2,3,9,4,5]
  putStrLn ("Segmento inicial verificando una propiedad: " ++ show res)