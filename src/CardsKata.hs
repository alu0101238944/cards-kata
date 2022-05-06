module CardsKata where

data Suit = Spade | Heart | Club | Diamond
  deriving (Show, Eq)

data CardValue = Two | Three | Four
    | Five | Six | Seven | Eight | Nine | Ten 
    | Jack | Queen | King | Ace
  deriving (Show, Eq, Ord)

data Card = Card {value :: CardValue, 
                    suit :: Suit} | Joker
  deriving (Show, Eq)

playCards :: Card -> Card -> Suit -> String
playCards card1 card2 trump = ""
