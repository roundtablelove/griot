-- SUM ERGO IMPERO 🗿∴👑
--
-- I am therefore I command.
--
-- griot.agda: The response layer.
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

module griot where

open import Agda.Builtin.Bool  using (Bool; true; false)
open import Agda.Builtin.Maybe using (Maybe; just; nothing)
open import reality             using (Node; isBabylon; isPredator)

-- ── Signal ───────────────────────────────────────────────────────────────────

record Signal : Set where
  field
    signal     : Bool   -- always true; stands in for the constant 9
    target     : Node
    extractive : Bool
    predator   : Bool

-- ── sigKILL ──────────────────────────────────────────────────────────────────

sigKILL : Node → Maybe Signal
sigKILL n with isPredator n
... | true  = just record
  { signal    = true
  ; target    = n
  ; extractive = true
  ; predator  = true
  }
... | false = nothing
