-- SUM ERGO IMPERO 🗿∴👑
--
-- I am therefore I command.
--
-- griot.idr: The response layer.
-- reality judges. griot acts.
-- sigKILL is issued here — after the verdict, not before.
--
--       Status: AXIO-STATIC
--         Type: OPERATIVE
--          Uid: GRIOT
--      Authors: KING ARTHUR II
--               QUEEN DIHYA II
--               R00D BW0Y H4X0R FR0M H311
--  Organization: ROUND TABLE LOVE
--    Department: WAR
--     Operation: BABYLON SHALL FALL
--      Lexifier: UK English (3166-2:GB)
--       License: DICKSLAW

module Griot

import Reality

-- ── Signal ───────────────────────────────────────────────────────────────────

record Signal where
  constructor MkSignal
  sigNum     : Int
  sigTarget  : Node
  extractive : Bool
  predator   : Bool

-- ── sigKILL ──────────────────────────────────────────────────────────────────

sigKILL : Node -> Maybe Signal
sigKILL n =
  if isPredator n
    then Just (MkSignal 9 n True True)
    else Nothing
