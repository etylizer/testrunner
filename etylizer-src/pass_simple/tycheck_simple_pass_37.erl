-module(tycheck_simple_pass_37).
-compile([nowarn_export_all, export_all]).

-spec cons_02() -> list(any()).
cons_02() -> [1 | ["foo" | []]].
