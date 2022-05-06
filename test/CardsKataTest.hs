module Main where

import CardsKata
import Test.Hspec

main :: IO ()
main = hspec cardsKataTests

{-
  TODO:
  ====

  If the cards are equal, return "Someone cheats"
  If one card has trump unlike another, wins the first one.
  If the cards have different suits (and no one has trump) return "Let's play again"
  If both cards have trump, the big one wins.
  If both cards have the same suit, the big one wins.
  As a card you can also get the string "joker" - it means this card always wins.

  (If card1 wins, return "The first card won" and vice versa.)
-}

cardsKataTests :: Spec
cardsKataTests = describe "CardsKata behaviour" $ do
  it "If the cards are equal someone is cheating" $ do
    playCards (Card Ten Heart) (Card Ten Heart) (Spade) `shouldBe` "Someone cheats"
    playCards (Joker) (Joker) (Spade) `shouldBe` "Someone cheats"

  it "If one card has trump unlike another, that one wins" $ do
    playCards (Card Ten Heart) (Card Ten Spade) (Heart) `shouldBe` "The first card won"
    playCards (Card Ten Spade) (Card Ten Heart) (Heart) `shouldBe` "The second card won"

  it "If the cards have different suits and no one has trump, let's play again" $ do
    playCards (Card Ten Spade) (Card Ten Heart) (Club) `shouldBe` "Let's play again"
    playCards (Card Ten Spade) (Card Ace Heart) (Club) `shouldBe` "Let's play again"

  it "If both cards have trump, the big one wins" $ do
    playCards (Card Ace Spade) (Card Two Spade) (Spade) `shouldBe` "The first card won"
    playCards (Card Four Spade) (Card King Spade) (Spade) `shouldBe` "The second card won"

  it "If both cards have the same suit, the big one wins" $ do
    playCards (Card Ace Spade) (Card Two Spade) (Heart) `shouldBe` "The first card won"
    playCards (Card Four Spade) (Card King Spade) (Heart) `shouldBe` "The second card won"

  it "If one card is the joker, that one wins" $ do
    playCards (Joker) (Card Ace Spade) (Spade) `shouldBe` "The first card won"
    playCards (Card Ace Spade) (Joker) (Spade) `shouldBe` "The second card won"
  