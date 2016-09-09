module Main exposing (..)

import Html exposing (Html, Attribute, text, div, input)
import CoinChanger exposing (..)
import Html.App exposing (beginnerProgram)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import List exposing (head, tail)
import String


main =
  beginnerProgram { model = "", view = view, update = update }


-- UPDATE

type Msg = NewContent String

update (NewContent content) oldContent =
  String.join ", " (List.map toStringWithCent (getChange (Result.withDefault 0 (String.toFloat content))))

toStringWithCent num =
  (String.append (toString num) "¢")

-- VIEW

view content =
  div []
    [ input [ placeholder "Enter An Amount", onInput NewContent, myStyle ] []
    , div [ myStyle ] [ text content ]
    ]

myStyle =
  style
    [ ("width", "100%")
    , ("height", "40px")
    , ("padding", "10px 0")
    , ("font-size", "2em")
    , ("text-align", "center")
    ]
