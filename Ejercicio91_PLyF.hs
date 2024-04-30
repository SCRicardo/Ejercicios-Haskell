concatR :: [[a]] -> [a]
concatR [] = []
concatR (xs:xss) = xs ++ concatR xss


main :: IO ()
main = do
  let res = concatR [[1,3],[2,4,6],[1,9]]
  putStrLn ("Concatenacion de una lista de listas: " ++ show res)