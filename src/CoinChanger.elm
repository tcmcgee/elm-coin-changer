module CoinChanger exposing (..)

import Html exposing (Html, Attribute, text, div, input)
import Html.App exposing (beginnerProgram)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import String


main =
  beginnerProgram { model = "", view = view, update = update }


-- UPDATE

type Msg = NewContent String

update (NewContent content) oldContent =
  content

coinChanger amount =
  {}
  
addDollar words =
  (String.append "$" words)

-- VIEW

view content =
  div []
    [ input [ placeholder "Enter An Amount", onInput NewContent, myStyle ] []
    , div [ myStyle ] [ text (addDollar content) ]
    ]

myStyle =
  style
    [ ("width", "100%")
    , ("height", "40px")
    , ("padding", "10px 0")
    , ("font-size", "2em")
    , ("text-align", "center")
    ]
