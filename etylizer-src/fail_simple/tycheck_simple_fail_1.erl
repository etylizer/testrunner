-module(tycheck_simple_fail_1).
-compile([nowarn_export_all, export_all]).

% Atoms
-spec atom_03_fail() -> integer().
atom_03_fail() -> foobar.
