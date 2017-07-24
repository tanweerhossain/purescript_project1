module Data.AddressBook where


import Prelude
import Control.Plus (empty)
import Data.List (List(..), filter, head)
import Data.Maybe (Maybe)


type Address ={
  street :: String ,
  city :: String ,
  state :: String
}
type Entry ={ 
  firstName :: String,
  lastName :: String,
  address :: Address
}
type AddressBook = List Entry

_add :: Number -> Number -> Number
_add x y =  output
  where
    output = x + y

sum :: Number -> Number -> Number
sum = \x y -> x + y

showEntry :: Entry -> String
showEntry entry = do
   entry.lastName <> ", " <> 
   entry.firstName <> ": " <> 
   showAddress entry.address
   
showAddress :: Address -> String
showAddress addr = do
    addr.street <> ", " <> 
    addr.city <> ", " <> 
    addr.state
    
emptyBook :: AddressBook
emptyBook = empty

insertEntry :: Entry -> AddressBook -> AddressBook
