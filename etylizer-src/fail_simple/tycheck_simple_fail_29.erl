-module(tycheck_simple_fail_29).
-compile([nowarn_export_all, export_all]).

-spec cons_04_fail() -> list(integer()).
cons_04_fail() -> [1 | [2 | 3]].
