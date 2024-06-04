-module(tycheck_simple_fail_27).
-compile([nowarn_export_all, export_all]).

-spec block_02_fail() -> integer().
block_02_fail() ->
    X = 1 + 3,
    case X of
        4 -> 5;
        _ -> foo
    end.
