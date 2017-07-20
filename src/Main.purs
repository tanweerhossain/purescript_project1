module Main where

import Prelude
import Control.Monad.Eff.Console (logShow,log)
import Math (sqrt,pi)
import Data.List

--main :: forall e. Eff (console :: CONSOLE | e) Unit
  --  add :: Int -> Int -> Int 
    --add x y = x + y 
radius :: Number
radius = 3.0
main = do
	log("Area of circle with radius "<>(show radius)<>" is : "<>(show (circleArea radius)))

circleArea :: Number -> Number
circleArea r = (pi * r * r)