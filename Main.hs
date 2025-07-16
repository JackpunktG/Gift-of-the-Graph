module Main where

import Graphable.FromPrime
import Data.Array
import System.Process
import System.Environment 


main = do
    (fileName:lowerSt:upperSt:_) <- getArgs
    let lower = read lowerSt :: Int
        upper = read upperSt :: Int
    loopFromPArray fileName lower upper 
    readProcess "runhaskell" ("toplot.hs" : words fileName) ""
    
    
    



loopFromPArray :: String -> Int -> Int -> IO ()
loopFromPArray fileName n upper 
    | n == upper = do
                let a = (fromPArray n) ! n
                appendFile fileName (show n ++ "\t" ++ show a ++ "\n")
    | otherwise = do
                let a = (fromPArray n ) ! n
                appendFile fileName (show n ++ "\t" ++ show a ++ "\n")
                loopFromPArray fileName (n+1) upper