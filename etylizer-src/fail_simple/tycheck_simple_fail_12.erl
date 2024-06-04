-module(tycheck_simple_fail_12).
-compile([nowarn_export_all, export_all]).

-spec integer_06_fail() -> 42.
integer_06_fail() -> 43.
