-module(tycheck_simple_fail_2).
-compile([nowarn_export_all, export_all]).

-spec atom_04_fail() -> foobar.
atom_04_fail() -> 1.
