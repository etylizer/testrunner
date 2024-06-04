-module(tycheck_simple_pass_61).
-compile([nowarn_export_all, export_all]).

% Intersection
-spec use_atom(atom()) -> atom().
use_atom(X) -> X.
-spec inter_01(integer()) -> integer()
; (atom()) -> atom().
inter_01(X) ->
    case X of
        _ when is_integer(X) -> X + 1;
        _ -> use_atom(X)
    end.
