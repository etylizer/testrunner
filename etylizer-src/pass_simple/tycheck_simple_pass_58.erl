-module(tycheck_simple_pass_58).
-compile([nowarn_export_all, export_all]).

-spec tuple_03() -> {atom(), integer(), {boolean(), string()}}.
tuple_03() -> {foo, 42, {true, "foo"}}.
