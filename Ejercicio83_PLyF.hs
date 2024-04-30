import Data.Char (toUpper, toLower)

mayusculaInicial :: String -> String
mayusculaInicial [] = []
mayusculaInicial (x:xs) = toUpper x : xs

titulo :: [String] -> [String]
titulo [] = []
titulo (p:ps) = mayusculaInicial p : [mayusculaInicial p' | p' <- ps]

main :: IO ()
main = do
  let res = titulo ["eL","arTE","DE","La","proGraMacion"]
  putStrLn ("Titulo con las reglas de mayusculas: " ++ show res)
