-module(tycheck_simple_pass_26).
-compile([nowarn_export_all, export_all]).

-spec op_09() -> list(integer()).
op_09() -> [] ++ [].
