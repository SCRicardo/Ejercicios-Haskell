pares :: [a] -> [b] -> [(a,b)]
pares xs ys = concat [[(x,y) | y <- ys] | x <- xs]

main :: IO ()
main = do
  let res = pares [1..3] [4..6]
  putStrLn ("Pares: " ++ show res)