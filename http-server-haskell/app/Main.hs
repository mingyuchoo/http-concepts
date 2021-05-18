{-# LANGUAGE OverloadedStrings #-}
import Web.Scotty
import Network.HTTP.Types

main = scotty 80 $ do
  get "/" $ do
    text "This was a GET request!"
  delete "/" $ do
    html "This was a DELETE request!"
  post "/" $ do
    text "This was a POST request!"
  put "/" $ do
    text "This was a PUT request!"

