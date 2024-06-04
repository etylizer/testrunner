-module(lc_warnings_6).
-compile([nowarn_export_all, export_all]).

opaque4() ->
    List = gen_tuple(),

    %% There should be a warning, since we are allowed to look inside
    %% the opaque type and see that it is a tuple (non-simple).
    [E || E <- List],

    %% Suppressed.
    _ = [E || E <- List],
    ok.

gen_tuple() ->
    [opaque_tuple(x, 25)].

-opaque opaque_tuple() :: {any(),any()}.
-spec opaque_tuple(any(), any()) -> opaque_tuple().
opaque_tuple(X, Y) ->
    {X,Y}.
