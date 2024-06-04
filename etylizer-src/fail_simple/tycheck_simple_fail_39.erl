-module(tycheck_simple_fail_39).
-compile([nowarn_export_all, export_all]).

-spec some_fun(string(), integer()) -> string().
some_fun(S, _) -> S.
-spec fun_ref_03_fail() -> string().
fun_ref_03_fail() -> some_fun("foo", "42").
