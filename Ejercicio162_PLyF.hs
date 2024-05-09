import Data.List (sort)

ullman :: (Ord a, Num a) => a -> Int -> [a] -> Bool
ullman t k xs = sum (take k (sort xs)) < t

main :: IO ()
main = do
  let res = ullman 5 3 [1..10]
  putStrLn ("Ullman: " ++ show res)
