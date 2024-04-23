densa :: [Int] -> [(Int,Int)]
densa xs = [(x,y) | (x,y) <- zip [n-1,n-2..0] xs, y /= 0]
    where n = length xs

main :: IO ()
main = do
  let res = densa [6,0,-5,4,-7]
  putStrLn ("Densa: " ++ show res)