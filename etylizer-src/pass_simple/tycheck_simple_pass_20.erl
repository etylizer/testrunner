-module(tycheck_simple_pass_20).
-compile([nowarn_export_all, export_all]).

% Operators
-spec op_01() -> integer().
op_01() -> 1 + 2.
