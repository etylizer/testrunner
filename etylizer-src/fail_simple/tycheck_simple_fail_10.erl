-module(tycheck_simple_fail_10).
-compile([nowarn_export_all, export_all]).

-spec integer_04_fail() -> 42.
integer_04_fail() -> foobar.
