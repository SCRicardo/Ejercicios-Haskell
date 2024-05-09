variacionesR :: Int -> [a] -> [[a]]
variacionesR _ [] = [[]]
variacionesR 0 _ = [[]]
variacionesR k xs =
    [z:ys | z <- xs, ys <- variacionesR (k-1) xs]


main :: IO ()
main = do
  let res = variacionesR 3 "ab"
  putStrLn ("Variaciones: " ++ show res)