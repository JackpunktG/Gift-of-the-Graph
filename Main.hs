module Main where

import Graphable.FromPrime
import Data.Array
import System.Process
import System.Environment 


main = do
    (fileName:lowerSt:upperSt:_) <- getArgs
    let lower = read lowerSt :: Int
        upper = read upperSt :: Int
    writeFile fileName ("x-Value,y" ++ fileName ++ "\n")
    loopFromPArray fileName lower upper 
    readProcess "venv\\Scripts\\python" ["graphbuddy.py"] fileName
    
    



loopFromPArray :: String -> Int -> Int -> IO ()
loopFromPArray fileName n upper 
    | n == upper = do
                let a = (fromPArray n) ! n
                appendFile fileName (show n ++ "," ++ show a ++ "\n")
    | otherwise = do
                let a = (fromPArray n ) ! n
                appendFile fileName (show n ++ "," ++ show a ++ "\n")
                loopFromPArray fileName (n+1) upper