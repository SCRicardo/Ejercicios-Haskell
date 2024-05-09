import Data.List (nub)

grafoReducido :: Eq a => (a -> b) -> (a -> Bool) -> [a] -> [(a,b)]
grafoReducido f p xs = [(x, f x) | x <- nub xs, p x]

main :: IO ()
main = do
  let res = grafoReducido (^2) even [1..9]
  putStrLn ("Grafo: " ++ show res)