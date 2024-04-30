borraR :: Eq a => a -> [a] -> [a]
borraR z [] = []
borraR z (x:xs) | z == x = borraR z xs
    | otherwise = x : borraR z xs

main :: IO ()
main = do
  let res = borraR 7 [2,3,5,6,5]
  putStrLn ("Borrando ocurrencias de un elemento: " ++ show res)