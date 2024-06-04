-module(tycheck_simple_fail_3).
-compile([nowarn_export_all, export_all]).

-spec atom_05_fail() -> atom().
atom_05_fail() -> 1.
