-module(tycheck_simple_pass_17).
-compile([nowarn_export_all, export_all]).

% Simple functions
-spec fun_01(any()) -> any().
fun_01(X) -> X.
