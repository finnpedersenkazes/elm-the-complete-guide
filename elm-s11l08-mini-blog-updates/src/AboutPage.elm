module AboutPage exposing (..)

import Element
import Element.Font
import Element.Input


type alias Model =
    { showDetail : Bool
    }

type Msg = MsgShowDetailClicked

initModel =
    { showDetail = False
    }


view model =
    Element.column [ Element.padding 20, Element.Font.size 14 ]
        [ Element.el [ Element.Font.size 22 ] (Element.text "About page")
        , Element.paragraph
            [ Element.paddingXY 0 20
            ]
            [ Element.text "This is a web site for learning about navigation"
            ]
        , Element.paragraph []
            [ viewDetail model.showDetail
            ]
        ]


viewDetail showDetail =
    if showDetail then
        Element.text "The authors of this web site are amazing"

    else
        Element.Input.button [ Element.Font.underline ]
            { onPress = Just MsgShowDetailClicked
            , label = Element.text "Show more"
            }

update : Msg -> Model -> Model
update msg model =
    case msg of
        MsgShowDetailClicked ->
            { model | showDetail = True }
