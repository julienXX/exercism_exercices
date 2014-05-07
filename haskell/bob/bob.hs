module Bob (responseFor) where
import Data.Char

isSilence :: String -> Bool
isSilence sentence = all isSpace sentence

isYelling :: String -> Bool
isYelling sentence = any isAlpha sentence && all isUpper (filter isAlpha sentence)

isQuestion :: String -> Bool
isQuestion sentence = last sentence == '?'

responseFor :: String -> String
responseFor sentence
        | isSilence sentence  = "Fine. Be that way!"
        | isYelling sentence  = "Woah, chill out!"
        | isQuestion sentence = "Sure."
        | otherwise           = "Whatever."
