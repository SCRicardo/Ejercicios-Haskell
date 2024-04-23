euler1 :: Integer -> Integer
euler1 n = sum [x | x <- [1..n-1], multiplo x 3 || multiplo x 5]
  where multiplo x y = mod x y == 0

main :: IO ()
main = do
  let res = euler1 1000
  putStrLn ("Proyecto Euler: " ++ show res)
