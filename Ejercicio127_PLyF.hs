perteneceRango :: Int -> (Int -> Int) -> Bool
perteneceRango y f = y `elem` takeWhile (<=y) (imagenes f)
    where imagenes f = [f x | x <- [0..]]

main :: IO ()
main = do
  let res = perteneceRango 1234 (\x -> 2*x+1)
  putStrLn ("Decision de permanencia: " ++ show res)