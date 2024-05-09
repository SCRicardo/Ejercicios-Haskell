creaOcteto :: [Int] -> [Int]
creaOcteto bs = take 8 (bs ++ repeat 0)

main :: IO ()
main = do
  let res = creaOcteto [1,0,1,1]
  putStrLn ("Codificacion: " ++ show res)