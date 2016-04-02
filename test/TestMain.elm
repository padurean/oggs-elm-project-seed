module Main (..) where

import String
import Task
import Console
import ElmTest exposing (..)
import Utils exposing (..)


tests : Test
tests =
  suite
    "A Test Suite"
    [ test "Addition" (assertEqual (3 + 7) 10)
    , test "String.left" (assertEqual "a" (String.left 1 "abcdefg"))
    {- replace True with False to make it fail -}
    , test "This test should NOT fail" (assert True)
    , test "This test should faillllll" (assertEqual (Utils.appendDummy "Ogg") "OggDummy")
    ]


port runner : Signal (Task.Task x ())
port runner =
  Console.run (consoleRunner tests)
