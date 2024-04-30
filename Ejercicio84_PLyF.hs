buscaCrucigrama :: Char -> Int -> Int -> [String] -> [String]
buscaCrucigrama l pos lon ps =
    [p | p <- ps,
        length p == lon,
        0 <= pos, pos < length p,
        p !! pos == l]


main :: IO ()
main = do
  let res = buscaCrucigrama 'c' 1 7 ["ocaso", "acabado", "ocupado"]

  putStrLn ("Busquedas en crucigramas: " ++ show res)