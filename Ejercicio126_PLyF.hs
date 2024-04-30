nDivisores :: Integer -> Int
nDivisores n = sum [1 | x <- [1..isqrt n], n `mod` x == 0] * 2 - if isqrt n ^ 2 == n then 1 else 0
  where
    isqrt = floor . sqrt . fromIntegral

triangulares :: [Integer]
triangulares = scanl1 (+) [1..]

euler12 :: Int -> Integer
euler12 n = head [x | x <- triangulares, nDivisores x > n]

main :: IO ()
main = do
  let res = euler12 5
  putStrLn ("Menor número triangular con más de n divisores: " ++ show res)