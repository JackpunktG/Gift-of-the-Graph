import System.Environment


main = do
    (fileName:_) <- getArgs
    contents <- readFile fileName
    let graphdata = words $ unwords $ lines contents
        xV = xValues graphdata
        yV = yValues graphdata
    length contents `seq` return () -- makes sure it is done so the handle will be droped for appendFile
    --appendFile fileName (show graphdata ++ "\n")
    appendFile fileName ("\nx = " ++ show xV ++ "\n")
    appendFile fileName ("y = " ++ show yV ++ "\n")
    
    
xValues :: [String] -> [Int]  --gets the first values 
xValues [] = []
xValues (x:y:xs) = (read x :: Int) : xValues xs

yValues :: [String] -> [Float]  -- get the second values for y axis
yValues [] = []
yValues (x:y:ys) = (read y :: Float) : yValues ys 