-module(tycheck_simple_pass_10).
-compile([nowarn_export_all, export_all]).

% Floats
-spec float_01() -> float().
float_01() -> 3.14.
