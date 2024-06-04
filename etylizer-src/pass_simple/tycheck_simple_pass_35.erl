-module(tycheck_simple_pass_35).
-compile([nowarn_export_all, export_all]).

-spec catch_02() -> integer().
catch_02() ->
    X = catch (2/10),
    case X of
        Y when is_float(Y) -> floor(Y);
        _ -> 42
    end.
