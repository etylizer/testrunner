-module(tycheck_simple_fail_9).
-compile([nowarn_export_all, export_all]).

-spec integer_03_fail() -> atom().
integer_03_fail() -> 42.
