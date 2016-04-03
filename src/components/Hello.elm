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
    [ text ("Hello, World" ++ (" !" |> String.repeat model.counter)) ]
