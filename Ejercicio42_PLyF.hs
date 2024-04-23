pitagoricas :: Int -> [(Int,Int,Int)]
pitagoricas n = [(x,y,z) | x <- [1..n],
    y <- [1..n],
    z <- [1..n],
    x^2 + y^2 == z^2]

main :: IO ()
main = do
  let res = pitagoricas 10  
  putStrLn ("PI: " ++ show res)