esFuncion :: (Eq a, Eq b) => [(a,b)] -> Bool
esFuncion [] = True
esFuncion ((x,y):r) =
    null [y' | (x',y') <- r, x == x', y /= y'] && esFuncion r

main :: IO ()
main = do
  let r3 = [(1,'a'), (2,'b'), (3,'c'), (1,'d'), (4,'e')]
      res = esFuncion r3
  putStrLn ("Caracter funcional: " ++ show res)