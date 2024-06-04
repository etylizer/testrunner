-module(tycheck_simple_pass_32).
-compile([nowarn_export_all, export_all]).

% Blocks
-spec block_01() -> integer().
block_01() ->
    X = 1 + 3,
    case X of
        4 -> 5;
        _ -> 42
    end.
