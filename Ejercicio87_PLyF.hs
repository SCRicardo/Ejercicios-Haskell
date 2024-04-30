divide :: (a -> Bool) -> [a] -> ([a], [a])
divide p xs = (takeWhile p xs, dropWhile p xs)


main :: IO ()
main = do
  let res = divide (< 0) [1,2,3]
  putStrLn ("Codificacion de mensajes: " ++ show res)