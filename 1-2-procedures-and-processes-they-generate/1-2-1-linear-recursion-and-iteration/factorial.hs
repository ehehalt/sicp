-- SICP 1.2.1
-- Linear Recursion and Iteration

fact1 :: Int -> Int
fact1 1 = 1
fact1 n = n * fact1(n - 1)


-- Iterative

fact2 :: Int -> Int
fact2 n = fact2iter 1 1 n

fact2iter :: Int -> Int -> Int -> Int
fact2iter product counter maxcount
| counter > maxcount = product
| otherwise = fact2iter (counter*product) (counter+1) maxcount


main = do
  print (fact1 7)
  print (fact2 7)
