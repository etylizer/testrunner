-module(tycheck_simple_fail_13).
-compile([nowarn_export_all, export_all]).

-spec float_04_fail() -> float().
float_04_fail() -> "bass".
