diferenciaR :: Eq a => [a] -> [a] -> [a]
diferenciaR xs ys = aux xs xs ys
    where
        aux a xs [] = a
        aux a xs (y:ys) = aux (borraR y a) xs ys

borraR :: Eq a => a -> [a] -> [a]
borraR _ [] = []
borraR y (x:xs)
    | x == y = borraR y xs
    | otherwise = x : borraR y xs

main :: IO ()
main = do
  let res = diferenciaR [2,3,5,6] [5,2,7]
  putStrLn ("Diferencia de dos listas: " ++ show res)
