bin2intR :: [Int] -> Int
bin2intR [] = 0
bin2intR (x:xs) = x * 2 ^ (length xs) + bin2intR xs

main :: IO ()
main = do
  let res = bin2intR [1,0,1,1]
  putStrLn ("Bases: " ++ show res)