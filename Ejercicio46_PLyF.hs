busca :: Eq a => a -> [(a, b)] -> [b]
busca c t = [v | (c', v) <- t, c' == c]

posiciones' :: Eq a => a -> [a] -> [Int]
posiciones' x xs = busca x (zip xs [0..])

main :: IO ()
main = do
  let res = posiciones' 5 [1,5,3,5,5,7]  
  putStrLn ("Posiciones: " ++ show res)