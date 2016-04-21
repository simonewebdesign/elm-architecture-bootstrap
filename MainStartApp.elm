
import Signal exposing (Address, Mailbox)
import Task exposing (Task)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import StartApp
import Effects exposing (Effects, Never)


app : StartApp.App Model
app =
  StartApp.start
    { init = ( initialModel, Effects.none )
    , update = update
    , view = view
    , inputs = []
    }


main : Signal Html
main =
  app.html


-- MODEL

type alias Model =
  {
  }


initialModel : Model
initialModel =
  {
  }


-- UPDATE

type Action
  = NoOp


update : Action -> Model -> ( Model, Effects Action )
update action model =
  case Debug.log "Main" action of
    NoOp ->
      ( model, Effects.none )


-- VIEW

view : Address Action -> Model -> Html
view address model =
  div []
    [
      text <| toString model
    ]


-- SIGNALS

port tasks : Signal (Task Never ())
port tasks =
  app.tasks
