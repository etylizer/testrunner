-module(lc_warnings_3).
-compile([nowarn_export_all, export_all]).

opaque1() ->
    List = gen_atom(),
    %% This is a list of an externally defined opaque type. Since
    %% we are not allowed to peek inside opaque types, there should
    %% be a warning (even though the type in this case happens to be
    %% an atom).
    [E || E <- List],

    %% Suppressed.
    _ = [E || E <- List],
    ok.

gen_atom() ->
    [opaque_atom_adt:atom(ok)].
