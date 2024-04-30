golomb :: Int -> Int
golomb 1 = 1
golomb n = 1 + golomb (n - golomb (golombAnterior n))
  where
    golombAnterior 1 = 1
    golombAnterior x = golomb (x - 1)

main :: IO ()
main = do
  let res = golomb 9
  putStrLn ("Sucesion de Golomb: " ++ show res)