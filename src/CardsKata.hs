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
playCards card1@(Card value1 suit1) card2@(Card value2 suit2) trump 
  | card1 == card2 = "Someone cheats"
  | suit1 == trump = "The first card won"
  | suit2 == trump = "The second card won"
  | suit1 /= suit2 = "Let's play again"
  | otherwise = ""
