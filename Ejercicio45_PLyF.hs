sumaConsecutivos :: [Int] -> [Int]
sumaConsecutivos xs = [x+y | (x,y) <- zip xs (tail xs)]


main :: IO ()
main = do
  let res = sumaConsecutivos [3,1,5,2]
  putStrLn ("PI: " ++ show res)