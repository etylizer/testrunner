-module(tycheck_simple_fail_43).
-compile([nowarn_export_all, export_all]).

-spec tuple_02_fail() -> {integer(), string()}.
tuple_02_fail() -> {"foo", 42}.
