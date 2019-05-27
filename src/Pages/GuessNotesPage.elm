module Pages.GuessNotesPage exposing (render)

import Fretboard
import GuessNoteGameControls
import Html exposing (Html, div)
import Html.Attributes exposing (class)
import Model exposing (Model)
import Msg exposing (Msg(..))


render : Model -> Html Msg
render model =
    div [ class "body" ]
        [ Fretboard.render model
        , div [ class "game-controls guess-notes" ] (GuessNoteGameControls.render model)
        ]
