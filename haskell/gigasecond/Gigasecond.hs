module Gigasecond (fromDay) where

import Data.Time.Calendar(Day, addDays)

fromDay :: Day -> Day
fromDay = addDays daysInAGigasecond

daysInAGigasecond :: Integer
daysInAGigasecond = 10 ^ (9 :: Integer) `div` 60 `div` 60 `div` 24
