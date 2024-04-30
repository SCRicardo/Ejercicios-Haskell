enRangoC :: Int -> Int -> [Int] -> [Int]
enRangoC a b xs = [x | x <- xs, a <= x, x <= b]

main :: IO ()
main = do
  let res =  enRangoC 5 5 [1..15]
  putStrLn ("Pertenencia a un rango: " ++ show res)