-module(tycheck_simple_fail_31).
-compile([nowarn_export_all, export_all]).

-spec cons_06_fail() -> [].
cons_06_fail() -> [1 | [2 | []]].
