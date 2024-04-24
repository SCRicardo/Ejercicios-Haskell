numPasosHanoi :: Integer -> Integer
numPasosHanoi 1 = 1
numPasosHanoi n = 1 + 2 * numPasosHanoi (n - 1)

main :: IO ()
main = do
  let res = numPasosHanoi 7
  putStrLn ("Torres de Hanoi-Pasos: " ++ show res)