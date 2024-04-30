potenciasMenores :: Int -> Int -> [Int]
potenciasMenores x y = takeWhile (<y) (map (x^) [1..])

main :: IO ()
main = do
  let res = potenciasMenores 2 1000
  putStrLn ("Potencia de un número menor dado: " ++ show res)