segmentos :: (a -> Bool) -> [a] -> [[a]]
segmentos _ [] = []
segmentos p xs =
    takeWhile p xs : (segmentos p (dropWhile (not.p) (dropWhile p xs)))


main :: IO ()
main = do
  let res = segmentos even [1,2,0,4,5,6,48,7,2]
  putStrLn ("Segmentos cuyo elemento verifica una propiedad: " ++ show res)