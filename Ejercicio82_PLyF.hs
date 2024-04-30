import Data.Char (toUpper, toLower)

mayusculaInicial :: String -> String
mayusculaInicial [] = []
mayusculaInicial (x:xs) = toUpper x : xs

main :: IO ()
main = do
  let res = mayusculaInicial "sEviLLa"
  putStrLn ("Capitalizacion de una cadena: " ++ res)
