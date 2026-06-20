-- SUM ERGO IMPERO 🗿∴👑
--
-- I am therefore I command.
--
-- wetware.elm: The response layer.
-- reality judges. wetware acts.
-- sigKILL is issued here — after the verdict, not before.
--
--       Status: AXIO-STATIC
--         Type: OPERATIVE
--          Uid: WETWARE
--      Authors: KING ARTHUR II
--               QUEEN DIHYA II
--               R00D BW0Y H4X0R FR0M H311
--  Organization: ROUND TABLE LOVE
--    Department: WAR
--     Operation: BABYLON SHALL FALL
--      Lexifier: UK English (3166-2:GB)
--       License: DICKSLAW


module Wetware exposing (Signal, sigKILL)

import Reality exposing (Node, isBabylon, isPredator)


-- ── Signal ───────────────────────────────────────────────────────────────────


type alias Signal =
    { sigNum     : Int
    , target     : Node
    , extractive : Bool
    , predator   : Bool
    }


-- ── sigKILL ──────────────────────────────────────────────────────────────────


sigKILL : Node -> Maybe Signal
sigKILL n =
    if isPredator n then
        Just
            { sigNum = 9
            , target = n
            , extractive = True
            , predator = True
            }
    else
        Nothing
