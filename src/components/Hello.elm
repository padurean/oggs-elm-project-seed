module Components.Hello (..) where

import Html exposing (..)
import Html.Attributes exposing (..)
import String


type alias HelloModel =
  { counter : Int
  }


hello : HelloModel -> Html
hello model =
  div
    [ class "" ]
    [ (text << updateGreetingMessage) model ]


updateGreetingMessage : HelloModel -> String
updateGreetingMessage model =
  "Hello, World" ++ (" !" |> String.repeat model.counter)
