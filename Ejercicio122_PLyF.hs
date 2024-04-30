import Data.List (permutations)

permutacionesN :: Int -> [Int]
permutacionesN n = map read (permutations (show n))

primo :: Int -> Bool
primo n
    | n <= 1 = False
    | otherwise = not $ any (\x -> n `mod` x == 0) [2..isqrt n]
    where
        isqrt = floor . sqrt . fromIntegral

primoPermutable :: Int -> Bool
primoPermutable x = and [primo y | y <- permutacionesN x]

main :: IO ()
main = do
  let res = primoPermutable 19
  putStrLn ("Primos permutables: " ++ show res)