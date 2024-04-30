filtraAplica_1 :: (a -> b) -> (a -> Bool) -> [a] -> [b]
filtraAplica_1 f p xs = [f x | x <- xs, p x]

main :: IO ()
main = do
  let res = filtraAplica_1 (4+) (<3) [1..7]
  putStrLn ("Lista de los valores de los elementos que cumplen una propiedad: " ++ show res)