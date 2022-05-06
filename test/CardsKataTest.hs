module Main where

import CardsKata
import Test.Hspec

main :: IO ()
main = hspec cardsKataTests

cardsKataTests :: Spec
cardsKataTests = describe "CardsKata behaviour" $ do
  it "1 should be 4" $ do
    1 `shouldBe` 4
