module Main (..) where

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Effects exposing (Effects)


-- official 'Elm Architecture' package
-- https://github.com/evancz/start-app

import StartApp


-- component import example

import Components.Hello exposing (hello)


-- APP KICK OFF!

app : StartApp.App Model
app =
  StartApp.start
    { init = init
    , update = update
    , view = view
    , inputs = [  ]
    }


main : Signal Html
main =
  app.html



-- MODEL


type alias Model =
  Int



-- INIT


init : (Model, Effects Action)
init =
  (0, Effects.none)



-- VIEW
-- Examples of:
-- 1)  an externally defined component ('hello', takes 'model' as arg)
-- 2a) styling through CSS classes (external stylesheet)
-- 2b) styling using inline style attribute (two variants)


view : Signal.Address Action -> Model -> Html
view address model =
  div
    [ class "", style styles.wrapper ]
    [ hello model
    , p [ style [ ( "color", "#FFF" ) ] ] [ text ("Ogg's Elm Project Seed") ]
    , button [ class "", onClick address Increment ] [ text "FTW!" ]
    ]



-- UPDATE


type Action
  = NoOp
  | Increment


update : Action -> Model -> (Model, Effects Action)
update action model =
  case action of
    NoOp ->
      ( model, Effects.none )

    Increment ->
      ( model + 1, Effects.none )



-- CSS STYLES

type alias Styles =
  { wrapper : List (String, String)
  }


styles : Styles
styles =
  { wrapper =
      [ ( "padding-top", "10px" )
      , ( "padding-bottom", "20px" )
      , ( "text-align", "center" )
      ]
  }
