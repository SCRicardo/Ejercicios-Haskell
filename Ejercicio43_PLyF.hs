ternasPitagoricas :: Integer -> [(Integer,Integer,Integer)]
ternasPitagoricas x = [(a,b,c) | a <- [1..x],
    b <- [a+1..x],
    c <- [x-a-b],
    a^2 + b^2 == c^2]


main :: IO ()
main = do
  let res = ternasPitagoricas 60
  putStrLn ("PI: " ++ show res)
