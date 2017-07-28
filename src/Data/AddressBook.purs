module Data.AddressBook where


import Prelude
import Control.Plus (empty)
import Data.List (List(..), filter, head)
import Data.List
import Data.Maybe (Maybe)
import Partial.Unsafe (unsafePartial)
import  Data.List.Partial as P
import Data.Maybe (fromMaybe)
import Control.Applicative (pure)
import Data.Array (foldM)

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

lengthEntry :: forall a. List a -> Int
lengthEntry arr = do 
  if null arr then 0 else 1 + lengthEntry (unsafePartial P.tail arr)
  
f1 :: List Int -> Int
f1 list = do
  length $ filter (\x -> (mod x 2) == 0) list  
  
factors :: Int -> Array (Array Int)
factors n = filter (\xs -> product xs == n) $ do
  i <- 1 .. n
  j <- i .. n
  pure [i, j]
  
product :: Array Int -> Int
product a = (fromMaybe $ a!!0)*(fromMaybe $ a!!1)

showEntry :: Entry -> String
showEntry entry = do
   entry.firstName <> " " <> 
   entry.lastName <> ": " <> 
   showAddress entry.address
printEntry :: String -> String -> AddressBook -> Maybe String
printEntry firstName lastName book = showEntry <$> (findEntry firstName lastName book)
   
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