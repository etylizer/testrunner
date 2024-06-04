-module(tycheck_simple_fail_14).
-compile([nowarn_export_all, export_all]).

-spec float_05_fail() -> atom().
float_05_fail() -> 3.14.
