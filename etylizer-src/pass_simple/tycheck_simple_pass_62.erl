-module(tycheck_simple_pass_62).
-compile([nowarn_export_all, export_all]).

% Intersection
-spec use_atom(atom()) -> atom().
use_atom(X) -> X.
% just swap the types of the intersection
-spec inter_02(atom()) -> atom()
; (integer()) -> integer().
inter_02(X) ->
    case X of
        _ when is_integer(X) -> X + 1;
        _ -> use_atom(X)
    end.
