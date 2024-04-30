distanciaC :: Eq a => [a] -> [a] -> Int
distanciaC xs ys = length [(x,y) | (x,y) <- zip xs ys, x /= y]

main :: IO ()
main = do
  let res =  distanciaC "romano" "rama"
  putStrLn ("Distancia de Hamming: " ++ show res)