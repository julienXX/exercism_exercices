module DNA (toRNA) where

toRNA :: String -> String
toRNA = map nucleotide where
    nucleotide 'G' = 'C'
    nucleotide 'C' = 'G'
    nucleotide 'T' = 'A'
    nucleotide 'A' = 'U'
    nucleotide _ = undefined
