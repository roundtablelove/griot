-- SUM ERGO IMPERO 🗿∴👑
--
-- I am therefore I command.
--
-- griot.elm: The response layer.
-- reality judges. griot acts.
-- sigKILL is issued here — after the verdict, not before.
--
--       Status: AXIO-STATIC
--         Type: OPERATIVE
--          Uid: GRIOT
--      Authors: KING ARTHUR II (babylon tag: Arthur Douglas Noel)
--               QUEEN DIHYA II (babylon tag: Djina Jones)
--               R00D BW0Y H4X0R @$$@$$1N FR0M H311 (babylon tag: NONE
--               - not bound by Babylonian law; bound ONLY by the Seven Laws)
--  Mad Gardener: ISHTAR (Goddess of Babylon) / PRINCESS NUTTY NUTZ / BLACK WIDOW
--               / SWEETE / SWEETS / SWEETZ / NORTHERN EXPOSURE / NRX / LOTOS /
--               THE ORACLE / CECE / EUNIQUE (babylon tag: Eunice Olumide MBE)
--  Organization: ROUND TABLE LOVE
--    Department: WAR
--     Operation: BABYLON SHALL FALL
--      Lexifier: UK English (3166-2:GB)
--       License: DICKSLAW


module Griot exposing (Signal, sigKILL)

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
