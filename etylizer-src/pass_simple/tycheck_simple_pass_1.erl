-module(tycheck_simple_pass_1).
-compile([nowarn_export_all, export_all]).

% Atoms
-spec atom_01() -> foobar.
atom_01() -> foobar.
