-module(tycheck_simple_pass_38).
-compile([nowarn_export_all, export_all]).

-spec cons_03() -> list(string() | integer()).
cons_03() -> [1 | ["foo" | []]].
