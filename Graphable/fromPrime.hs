module Graphable.FromPrime
( fromPArray
) where

import Data.Array

primeCheck :: (Integral a) => a -> Bool
primeCheck n
    | n == 1 = False
    | n == 2 = True
    | n `mod` 2 == 0 = False
    | otherwise = 
        not $ 0 `elem` [ n `mod` x | x <- [3,5..floor (sqrt (fromIntegral n))]]


fromPArray :: Int -> Array Int Int
fromPArray n = arr
  where
    arr = array (0, n) [(i, fromP i) | i <- [0..n]]
    fromP 0 = 0
    fromP i = if primeCheck i then 0 else (arr ! (i-1)) + 1