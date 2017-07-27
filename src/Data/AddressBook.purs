module Data.AddressBook where


import Prelude
import Control.Plus (empty)
import Data.List (List(..), filter, head)
import Data.List
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
   entry.firstName <> " " <> 
   entry.lastName <> ": " <> 
   showAddress entry.address
printEntry :: String -> String -> AddressBook -> Maybe String
printEntry firstName lastName book = map showEntry (findEntry firstName lastName book)
   
printEntryByAddress :: Address -> AddressBook -> Maybe String
printEntryByAddress address book = map showEntry $ findEntryByAddress address book

showAddress :: Address -> String
showAddress addr = do
    addr.street <> ", " <> 
    addr.city <> ", " <> 
    addr.state
    
emptyBook :: AddressBook
emptyBook = empty

insertEntry :: Entry -> AddressBook -> AddressBook
insertEntry = Cons

nubByEntry ::  AddressBook -> AddressBook
nubByEntry book = nubBy (\a b ->  equateEntry a b) book

equateEntry :: Entry -> Entry -> Boolean
equateEntry a b = do
  (a.firstName == b.firstName) && (a.lastName == b.lastName) 
  
findEntry :: String -> String -> AddressBook -> Maybe Entry
findEntry firstName lastName book = head $ filter filterEntry book
  where
    filterEntry :: Entry -> Boolean
    filterEntry entry = entry.firstName == firstName && entry.lastName == lastName
    
findEntryByAddress :: Address -> AddressBook -> Maybe Entry
findEntryByAddress address book = head $ filter filterEntry book
  where
    filterEntry :: Entry -> Boolean
    filterEntry entry = entry.address.street == address.street && entry.address.city == address.city && entry.address.state == address.state