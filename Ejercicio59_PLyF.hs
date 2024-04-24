concat' :: [[a]] -> [a]
concat' [] = []
concat' (xs:xss) = xs ++ concat' xss

main :: IO ()
main = do
  let res = concat' [[1..3],[5..7],[8..10]]
  putStrLn ("Concatenacion de una lista: " ++ show res)