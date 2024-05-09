import Data.Char (ord)

minuscula2int :: Char -> Int
minuscula2int c = ord c - ord 'a' + 1

main :: IO ()
main = do
  let res = minuscula2int 'z'
  putStrLn ("Codificación: " ++ show res)
