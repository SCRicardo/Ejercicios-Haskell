divideMediaF :: [Double] -> ([Double],[Double])
divideMediaF xs = (filter (<m) xs, filter (>m) xs)
    where m = media xs

media :: [Double] -> Double
media xs = sum xs / fromIntegral (length xs)

main :: IO ()
main = do
  let res = divideMediaF [1,2,3]
  putStrLn ("Division de una lista numerica: " ++ show res)