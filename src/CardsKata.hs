module CardsKata where

cardsKata :: Int -> String
cardsKata n = addDefault $ fizz n ++ buzz n
  where
    addDefault "" = show n
    addDefault s = s

fizz :: Int -> String
fizz n
  | n `mod` 3 == 0 = "Fizz"
  | otherwise = ""

buzz :: Int -> String
buzz n
  | n `mod` 5 == 0 = "Buzz"
  | otherwise = ""