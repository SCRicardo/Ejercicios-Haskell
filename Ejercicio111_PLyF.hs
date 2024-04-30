ecoC :: [a] -> [a]
ecoC xs = concat [replicate i x | (i,x) <- zip [1..] xs]


main :: IO ()
main = do
  let res = take 10 (ecoC [1..])
  putStrLn ("Lista repetida de cada elemento: " ++ show res)