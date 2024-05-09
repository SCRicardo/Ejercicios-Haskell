pares :: [(Integer,Integer)]
pares = [(x,y) | y <- [0..], x <- [0..y]]

main :: IO ()
main = do
  let res = take 11 pares

  putStrLn ("Pares: " ++ show res)