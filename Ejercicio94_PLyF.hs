relacionados :: (a -> a -> Bool) -> [a] -> Bool
relacionados r (x:y:zs) = (r x y) && relacionados r (y:zs)
relacionados _ _ = True


main :: IO ()
main = do
  let res = relacionados (<) [2,3,1,9]
  putStrLn ("Lista con elementos consecutivos relacionados: " ++ show res)