ceros :: Int -> Int
ceros n | n `rem` 10 == 0 = 1 + ceros (n `div`10)
    | otherwise = 0


main :: IO ()
main = do
  let res = ceros 30501
  putStrLn ("Número de ceros finales: " ++ show res)