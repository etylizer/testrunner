-module(tycheck_simple_pass_36).
-compile([nowarn_export_all, export_all]).

% Cons and nil
-spec cons_01() -> list(integer()).
cons_01() -> [1 | [2 | []]].
