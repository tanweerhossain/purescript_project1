module Data.AddressBook where


import Prelude
import Control.Plus (empty)
import Data.List (List(..), filter, head)
import Data.Maybe (Maybe)

type Entry ={ 
  firstName :: String,
  lastName :: String,
  address :: Address
}
type Address ={
  street :: String ,
  city :: String ,
  state :: String
}
type AddressBook = List Entry

_add :: Number -> Number -> Number
_add x y =  output
  where
    output = x + y

sum :: Number -> Number -> Number
sum = \x y -> x + y