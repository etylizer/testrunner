-module(tycheck_simple_fail_15).
-compile([nowarn_export_all, export_all]).

-spec string_05_fail() -> string().
string_05_fail() -> 1.
