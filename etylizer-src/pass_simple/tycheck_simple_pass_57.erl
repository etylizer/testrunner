-module(tycheck_simple_pass_57).
-compile([nowarn_export_all, export_all]).

% Tuples
-spec tuple_01() -> {integer(), string()}.
tuple_01() -> {42, "foo"}.
