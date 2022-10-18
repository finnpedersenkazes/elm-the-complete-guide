module Main exposing (..)

import Element
import Element.Font
import Html exposing (Html)

main : Html msg
main =
    viewLayout

red : Element.Color
red = Element.rgb255 255 0 0
blue : Element.Color
blue = Element.rgb255 0 0 200
black : Element.Color
black = Element.rgb255 0 0 0

viewLayout : Html msg
viewLayout =
    Element.layoutWith {
        options = []
    }
    [ Element.Font.bold
    , Element.Font.color blue ]
    (Element.column []
    [
        Element.text "My Dog"
        , viewParagraph
    ])

viewParagraph : Element.Element msg
viewParagraph =
    Element.paragraph [ Element.Font.color black ]
    [
        Element.text "A web page for my dog"
    ]
