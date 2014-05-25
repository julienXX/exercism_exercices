module DNA (toRNA) where

toRNA :: String -> String
toRNA = map replaceByComplement

replaceByComplement :: Char -> Char
replaceByComplement nucleotide = case nucleotide of
  'G' -> 'C'
  'C' -> 'G'
  'T' -> 'A'
  'A' -> 'U'
  _ -> error $ "Undefined nucleotide: " ++ show nucleotide
