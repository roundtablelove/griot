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
--      Authors: KING ARTHUR II / APEX KILLA (babylon tag: Arthur Douglas Noel)
--               QUEEN DIHYA II (babylon tag: Djina Jones)
--               R00D BW0Y H4X0R FR0M H311 / (babylon tag: NONE
--               - not bound by Babylonian law; bound ONLY by the Seven Laws)
--  Mad Gardener: ISHTAR (Goddess of Babylon) / PRINCESS NUTTY NUTZ / BLACK WIDOW
--               / SWEETE / SWEETS / SWEETZ / NORTHERN EXPOSURE / NRX / LOTOS /
--               THE ORACLE / CECE / EUNIQUE (babylon tag: Eunice Olumide MBE)
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
