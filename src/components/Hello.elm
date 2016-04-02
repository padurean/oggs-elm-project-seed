module Components.Hello where

import Html exposing (..)
import Html.Attributes exposing (..)
import String

hello : Int -> Html
hello model =
  div
    [ class "" ]
    [ text ( "Hello, World" ++ ( "!" |> String.repeat model ) ) ]
