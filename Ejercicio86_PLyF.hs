import Data.List (isPrefixOf)

contieneR :: String -> String -> Bool
contieneR _ [] = True
contieneR [] _ = False
contieneR xs ys = isPrefixOf ys xs || contieneR (tail xs) ys

main :: IO ()
main = do
  let res = contieneR "escasamente" "cante"
  putStrLn ("Decidir si una cadena es subcadena de otra: " ++ show res)