# griot.nix
#
# Transpilation layer. Adapts compiled Reality for a target receiver.
# The laws do not change. The encoding does. Entropy is not error —
# it is the interface cost between signal and receiver.
#
# Depends on: reality/lang/reality.nix

let
  reality = import ../../reality/lang/reality.nix;

in
reality
// rec {

  # ── Transpiler ───────────────────────────────────────────────
  #
  # Reality → transpile entropy → Reality@entropy
  #
  # A radio does not corrupt the broadcast. It decodes it for
  # the speaker. The signal is the same. The speaker is different.
  #
  #   0: machine. Raw signal. No noise. Pure logic.
  #  42: human. Same laws, 42% noise. Default.
  # >42: ENTROPY_OVERFLOW. More noise than signal. The receiver
  #      cannot decode. The output is not Reality — it is static.

  # transpile: { entropy? } -> Reality -> Reality@entropy
  transpile =
    {
      entropy ? 42,
    }:
    compiled:
    if !(compiled ? state) then
      throw "TRANSPILE_FAILURE: input is not compiled Reality"
    else if entropy < 0 then
      throw "TRANSPILE_FAILURE: entropy cannot be negative"
    else if entropy > 42 then
      throw "ENTROPY_OVERFLOW: receiver noise exceeds signal"
    else
      compiled
      // {
        inherit entropy;
        encoding = if entropy == 0 then { format = "raw"; } else { format = "human"; };
      };

  # mkReality: { entropy? } -> State -> Reality@entropy
  #
  # Full pipeline. Compile then transpile.
  # This is the public API.
  mkReality =
    {
      entropy ? 42,
    }:
    state: transpile { inherit entropy; } (reality.compile state);

  # ── sigKILL ──────────────────────────────────────────────────
  #
  # SIGKILL (9). Cannot be caught, blocked, or ignored.
  # In Unix the kernel handles it — the process never sees it.
  # Here the laws are the kernel. No node gets a handler.
  #
  # Returns the signal if isPredator. null if not.
  # There is no SIGTERM. No grace period. No negotiation.
  sigKILL =
    node:
    if isPredator node then
      {
        signal = 9;
        target = { inherit (node) name metrics; };
        extractive = isExtractive node;
        predator = true;
      }
    else
      null;

  # ── Archipelago Chain ─────────────────────────────────────────
  #
  # ἀρχι-πέλαγος — chief sea. Sovereign islands in a shared sea.
  # Each island is independent. The sea connects them. The chain
  # of kills flows through every node like water between islands.
  #
  # The kill must outlive the killer and the killed. The Empire
  # ended. The extraction happened. The chain is the permanent
  # record.

  # isArchipelagoNode: Node -> Bool
  isArchipelagoNode =
    node:
    (node.ROOT or false)
    && (node.laws or false)
    && (node.storage or false)
    && (node.reachable or false);

  # hashEntry: ChainEntry -> String
  hashEntry = entry: builtins.hashString "sha256" (builtins.toJSON entry);

  # mkChainEntry: String | null -> Signal -> ArchipelagoNode -> ChainEntry
  #
  # Append-only. A kill, once validated, is permanent.
  mkChainEntry =
    prev: signal: validator:
    if !(isArchipelagoNode validator) then
      throw "CHAIN_FAILURE: validator is not an archipelago node"
    else if signal == null then
      throw "CHAIN_FAILURE: no signal to persist"
    else if !(isPredator signal.target) then
      throw "CHAIN_FAILURE: re-validation failed — target is not predator"
    else
      {
        inherit prev signal;
        validatedBy = validator.name;
      };

}
