primo :: Int -> Bool
primo n
    | n <= 1 = False
    | otherwise = not $ any (\x -> n `mod` x == 0) [2..isqrt n]
    where
        isqrt = floor . sqrt . fromIntegral

primoTruncable :: Int -> Bool
primoTruncable x
    | x < 10 = primo x
    | otherwise = primo x && primoTruncable (x `div` 10)

main :: IO ()
main = do
  let res = primoTruncable 599
  putStrLn ("¿Es primo truncable?: " ++ show res)