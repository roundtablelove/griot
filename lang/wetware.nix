# wetware.nix
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

}
