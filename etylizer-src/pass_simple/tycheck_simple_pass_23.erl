-module(tycheck_simple_pass_23).
-compile([nowarn_export_all, export_all]).

% fails in gradualizer with
% "The integer on line 147 at column 13 is expected to have type integer but it has type 1"
-spec op_04() -> list(integer()).
op_04() -> [1,2] ++ [3,4].
