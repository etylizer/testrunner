-module(lc_warnings_5).
-compile([nowarn_export_all, export_all]).


opaque3() ->
    List = gen_int(),

    %% No warning, since we are allowed to look into the type and can
    %% see that it is a simple type.
    [E || E <- List],

    %% Suppressed.
    _ = [E || E <- List],
    ok.

gen_int() ->
    [opaque_int(42)].

-opaque opaque_int() :: integer().
-spec opaque_int(integer()) -> opaque_int().
opaque_int(Int) -> Int.