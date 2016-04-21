
import Signal exposing (Address, Mailbox)
import Task exposing (Task)

import Html exposing (..)
import Html.Events exposing (onClick)


main : Signal Html
main =
  Signal.map (view actions.address) model


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


update : Action -> Model -> Model
update action model =
  case Debug.log "Main" action of
    NoOp ->
      model


-- VIEW

view : Address Action -> Model -> Html
view address model =
  div []
    [
      text <| toString model
    ]


-- SIGNALS

actions : Mailbox Action
actions =
  Signal.mailbox NoOp


model : Signal Model
model =
  Signal.foldp update initialModel actions.signal


tasksMailbox : Mailbox (Task x ())
tasksMailbox =
  Signal.mailbox (Task.succeed ())


port tasks : Signal (Task x ())
port tasks =
  tasksMailbox.signal
