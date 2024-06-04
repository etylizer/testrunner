-module(tycheck_simple_fail_32).
-compile([nowarn_export_all, export_all]).

-spec nil_05_fail() -> integer().
nil_05_fail() -> [].
