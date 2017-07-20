module Main where

import Prelude
import Control.Monad.Eff.Console (logShow,log)
import Math (sqrt)
import Data.List

--main :: forall e. Eff (console :: CONSOLE | e) Unit
  --  add :: Int -> Int -> Int 
    --add x y = x + y 
main = do
	log("Hello Tanweer")
	logShow (_diagonal 3.0  4.0)

_diagonal :: Number -> Number -> Number
_diagonal b p = sqrt( b*b +p*p )