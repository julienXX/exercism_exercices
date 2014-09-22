module Sublist (Sublist(Equal, Sublist, Superlist, Unequal), sublist) where

import Data.List

data Sublist = Unequal | Sublist | Equal | Superlist
             deriving (Show, Eq)

sublist :: (Eq a) => [a] -> [a] -> Sublist
sublist list other_list
  | list == other_list          = Equal
  | list `isInfixOf` other_list = Sublist
  | other_list `isInfixOf` list = Superlist
  | otherwise                   = Unequal
