dec2entR :: [Int] -> Int
dec2entR xs = dec2entR' 0 xs
    where dec2entR' a [] = a
          dec2entR' a (x:xs) = dec2entR' (10*a+x) xs

main :: IO ()
main = do
  let res = dec2entR [2,3,4,5]
  putStrLn ("Numero correspondiente a una lista de cifras: " ++ show res)