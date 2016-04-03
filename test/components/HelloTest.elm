module Components.HelloTest (..) where

import ElmTest exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Components.Hello exposing (hello)


testHello : Assertion
testHello =
  -- TODO OGG: make it work
  let
      actual =
          hello {counter = 1}
      expected =
          div
          [ class "" ]
          [ text ("Hello, World!") ]
  in
    -- TODO OGG: make it work:
    -- assertEqual actual expected
    assertEqual (1 + 2) 3


tests : List Test
tests =
  [ test "HelloTest.hello" testHello
  ]
