reversiblesMenores :: Int -> Int
reversiblesMenores n = length [x | x <- [1..n-1], esReversible x]
esReversible :: Int -> Bool
esReversible n = rem n 10 /= 0 && impares (cifras (n + (inverso n)))
impares :: [Int] -> Bool
impares xs = and [odd x | x <- xs]
inverso :: Int -> Int
inverso n = read (reverse (show n))
cifras :: Int -> [Int]
cifras n = [read [x] | x <- show n]


main :: IO ()
main = do
  let res = inverso 3034
  putStrLn ("Reversible: " ++ show res)
