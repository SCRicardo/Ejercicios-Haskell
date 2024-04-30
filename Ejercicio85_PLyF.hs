posiciones :: String -> Char -> [Int]
posiciones xs y = [n | (x,n) <- zip xs [0..], x == y]

main :: IO ()
main = do
  let res = posiciones "Salamamca" 'a'

  putStrLn ("Posiciones de un caracter en cadena: " ++ show res)