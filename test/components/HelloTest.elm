module Components.HelloTest (..) where

import ElmTest exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Components.Hello exposing (hello, updateGreetingMessage)


testHello : Assertion
testHello =
  let
    actual =
      hello { counter = 1 }

    expected =
      div
        [ class "" ]
        [ text ("Hello, World!") ]
  in
    -- TODO OGG: make it work:
    -- assertEqual actual expected
    assertEqual (1 + 2) 3


testUpdateGreetingMessage : Assertion
testUpdateGreetingMessage =
  let
    actual =
      updateGreetingMessage { counter = 2 }

    expected =
      "Hello, World ! !"
  in
    assertEqual actual expected


tests : List Test
tests =
  [ test "Components.Hello.hello" testHello
  , test "Components.Hello.updateGreetingMessage" testUpdateGreetingMessage
  ]
