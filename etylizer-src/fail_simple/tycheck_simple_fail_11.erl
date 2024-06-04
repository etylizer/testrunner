-module(tycheck_simple_fail_11).
-compile([nowarn_export_all, export_all]).

-spec integer_05_fail() -> integer().
integer_05_fail() -> foobar.
