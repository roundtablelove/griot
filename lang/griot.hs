-- SUM ERGO IMPERO 🗿∴👑
--
-- I am therefore I command.
--
-- griot.hs: The response layer.
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

import Reality (Node, isBabylon, isPredator)

-- ── Signal ───────────────────────────────────────────────────────────────────

data Signal = Signal
  { sigNum     :: Int
  , sigTarget  :: Node
  , extractive :: Bool
  , predator   :: Bool
  } deriving (Show)

-- ── sigKILL ──────────────────────────────────────────────────────────────────

sigKILL :: Node -> Maybe Signal
sigKILL n
  | isPredator n = Just Signal
      { sigNum    = 9
      , sigTarget = n
      , extractive = True
      , predator  = True
      }
  | otherwise    = Nothing
