import Html exposing (..)
import Html.App as Html
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


main =
  Html.beginnerProgram
    { model = initialModel
    , view = view
    , update = update
    }


-- MODEL

type alias Model =
  {
  }


initialModel : Model
initialModel =
  {
  }


-- UPDATE

type Msg =
  NoOp


update msg model =
  case msg of
    NoOp ->
      model


-- VIEW

view model =
  div []
    [
      text <| toString model
    ]
