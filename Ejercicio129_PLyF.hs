potenciaFunc :: Int -> (a -> a) -> a -> a
potenciaFunc 0 _ x = x
potenciaFunc n f x = potenciaFunc (n-1) f (f x)

main :: IO ()
main = do
  let res = potenciaFunc 4 (+10) 5
  putStrLn ("Aplicacion iterada de una funcion: " ++ show res)