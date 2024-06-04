-module(tycheck_simple_pass_33).
-compile([nowarn_export_all, export_all]).

-spec block_03() -> 4.
block_03() ->
    _ = 1 + 3,
    _ = 4.
