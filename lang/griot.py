# SUM ERGO IMPERO 🗿∴👑
#
# I am therefore I command.
#
# griot.py: The response layer.
# reality judges. griot acts.
# sig_kill is issued here — after the verdict, not before.
#
#       Status: AXIO-STATIC
#         Type: OPERATIVE
#          Uid: GRIOT
#      Authors: KING ARTHUR II
#               QUEEN DIHYA II
#               R00D BW0Y H4X0R FR0M H311
#  Organization: ROUND TABLE LOVE
#    Department: WAR
#     Operation: BABYLON SHALL FALL
#      Lexifier: UK English (3166-2:GB)
#       License: DICKSLAW

from __future__ import annotations
from dataclasses import dataclass
from typing import Optional

from reality import Node, is_babylon, is_predator

# ── Signal ────────────────────────────────────────────────────────────────────


@dataclass(frozen=True)
class Signal:
    signal:    int
    target:    Node
    extractive: bool
    predator:  bool


# ── sig_kill ─────────────────────────────────────────────────────────────────


def sig_kill(n: Node) -> Optional[Signal]:
    if not is_predator(n):
        return None
    return Signal(
        signal=9,
        target=n,
        extractive=True,
        predator=True,
    )
