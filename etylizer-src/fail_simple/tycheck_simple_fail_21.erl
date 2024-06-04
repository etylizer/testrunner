-module(tycheck_simple_fail_21).
-compile([nowarn_export_all, export_all]).

-spec op_07_fail() -> list(integer()).
op_07_fail() -> [1,2] ++ ["foo", "bar"].
