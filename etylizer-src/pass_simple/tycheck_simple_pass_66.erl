-module(tycheck_simple_pass_66).
-compile([nowarn_export_all, export_all]).

% same as fun_local_02 but transformed
% such that there are no n-tuples and n-functions anymore
-spec fun_local_02_plus() -> integer().
fun_local_02_plus() ->
    F = fun Add(X) ->
        case X of
            0 -> 0;
            Y -> my_plus({Y, Add(my_plus({X, -1}))})
        end
        end,
    F(3).
-spec my_plus({integer(), integer()}) -> integer(); ({float(), integer()}) -> float(); ({integer(), float()}) -> float(); ({float(), float()}) -> float().
my_plus({A, B}) -> A + B.
