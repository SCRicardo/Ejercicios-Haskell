repite :: a -> [a]
repite x = x : repite x


main :: IO ()
main = do
  let res = take 3 (repite 5)
  putStrLn ("Lista repetida: " ++ show res)