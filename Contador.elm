module Main exposing (..)

import Html exposing (..)
import Html.Events exposing (..)


main =
    Html.beginnerProgram { model = modelo, view = vista, update = atualizar }



-- Modelo


modelo =
    0



-- Vista


vista modelo =
    div []
        [ button [ onClick Decrementar ] [ text "-" ]
        , text (toString modelo)
        , button [ onClick Incrementar ] [ text "+" ]
        ]



-- Atualização


type Mensagem
    = Incrementar
    | Decrementar


atualizar mensagem modelo =
    case mensagem of
        Incrementar ->
            modelo + 1

        Decrementar ->
            modelo - 1
