-module(tycheck_simple_pass_39).
-compile([nowarn_export_all, export_all]).

-spec cons_05() -> list().
cons_05() -> [1 | [2 | []]].
