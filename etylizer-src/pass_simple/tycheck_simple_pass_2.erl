-module(tycheck_simple_pass_2).
-compile([nowarn_export_all, export_all]).

-spec atom_02() -> atom().
atom_02() -> foobar.
