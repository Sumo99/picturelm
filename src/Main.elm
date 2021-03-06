port module Main exposing (main)

import Browser
import Home exposing (view)
import Model exposing (AppModel, Flags, baseModel)
import Msg exposing (AppMsg(..))
import Navigation exposing (Route(..))
import Update exposing (update)


main : Program Flags AppModel AppMsg
main =
    Browser.element
        { init = baseModel
        , view = view
        , subscriptions = subscriptions
        , update = update
        }


subscriptions : AppModel -> Sub AppMsg
subscriptions _ =
    onUrlChange UrlChanged



-- Navigation


port onUrlChange : (String -> msg) -> Sub msg
