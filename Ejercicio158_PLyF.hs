chiCuad :: [Float] -> [Float] -> Float
chiCuad os es = sum [((o-e)^2)/e | (o,e) <- zip os es]

main :: IO ()
main = do
  let res = chiCuad [3,5,6] [5,6,3]
  putStrLn ("Descifrado: " ++ show res)