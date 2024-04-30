agarradoC :: [Float] -> Float
agarradoC ps = sum [p * 0.9 | p <- ps, p * 0.9 <= 199]

main :: IO ()
main = do
  let res =  agarradoC [45.00, 199.00, 220.00, 399.00]
  putStrLn ("La compra de una persona agarrada: " ++ show res)