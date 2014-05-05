module DNA (toRNA) where

isAdenine :: String -> Bool
isAdenine nucleotide = nucleotide == "A"

isCytosine :: String -> Bool
isCytosine nucleotide = nucleotide == "C"

isGuanine :: String -> Bool
isGuanine nucleotide = nucleotide == "G"

isThymidine :: String -> Bool
isThymidine nucleotide = nucleotide == "T"

toRNA :: String -> String
toRNA nucleotide
        | isAdenine nucleotide = "U"
        | isCytosine nucleotide = "G"
        | isGuanine nucleotide = "C"
        | isThymidine nucleotide = "A"
        | otherwise = undefined
