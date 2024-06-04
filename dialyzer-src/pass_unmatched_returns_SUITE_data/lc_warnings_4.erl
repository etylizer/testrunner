-module(lc_warnings_4).
-compile([nowarn_export_all, export_all]).

opaque2() ->
    List = gen_array(),
    %% This is an list of an externally defined opaque type. Since
    %% we are not allowed to peek inside opaque types, there should
    %% be a warning.
    [E || E <- List],

    %% Suppressed.
    _ = [E || E <- List],
    ok.

gen_array() ->
    [array:new()].
