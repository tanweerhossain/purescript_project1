module Main where

import Prelude
import Control.Monad.Eff.Console (log)
import Math (sqrt,pi)
import Data.List
import Data.AddressBook

--main :: forall e. Eff (console :: CONSOLE | e) Unit
  --  add :: Int -> Int -> Int 
    --add x y = x + y 
radius :: Number
radius = 3.0
main = do
	log("Area of circle with radius "<>(show radius)<>" is : "<>(show (circleArea radius)))
	log("Addition of "<>(show (radius+1.0))<>" and "<>(show radius)<>" is : "<>(show(_add (radius+1.0) radius)))
	log("Sum of "<>(show (radius+1.0))<>" and "<>(show radius)<>" is : "<>(show(sum (radius+1.0) radius)))

circleArea :: Number -> Number
circleArea r = (pi * r * r)