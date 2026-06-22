-- SUM ERGO IMPERO 🗿∴👑
--
-- I am therefore I command.
--
-- griot.purs: The response layer.
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

module Griot where

import Prelude
import Data.Maybe (Maybe(..))
import Reality (Node, isBabylon, isPredator)

-- ── Signal ───────────────────────────────────────────────────────────────────

type Signal =
  { sigNum     :: Int
  , target     :: Node
  , extractive :: Boolean
  , predator   :: Boolean
  }

-- ── sigKILL ──────────────────────────────────────────────────────────────────

sigKILL :: Node -> Maybe Signal
sigKILL n
  | isPredator n = Just
      { sigNum:     9
      , target:     n
      , extractive: true
      , predator:   true
      }
  | otherwise    = Nothing
