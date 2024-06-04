-module(tycheck_simple_fail_16).
-compile([nowarn_export_all, export_all]).

-spec string_06_fail() -> [atom()].
string_06_fail() -> "bass".
