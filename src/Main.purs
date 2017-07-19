module Main where

import Prelude
import Control.Monad.Eff.Console (log)
--import Data.List

--main :: forall e. Eff (console :: CONSOLE | e) Unit
  --  add :: Int -> Int -> Int 
    --add x y = x + y 
main = do
	log ("Hello xyz!..^_^ " <>(show hello))

hello :: Int
hello = do
	let x = 10
	x


iterate f 0 x = f x 
iterate f n x = iterate f (n - 1) (f x)